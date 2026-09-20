cask "motrix@beta" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64", linux: "-x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.0-beta.40"
  sha256 arm:          "ca1b6837d342e7525cc2d56c2b2fd57dc439bce4bbcdf7620d0ddc8b0e5b4603",
         intel:        "7580166589ac3ee98561ecf05dca5b43bba447037c94591a097691e0b357f252",
         arm64_linux:  "15379db37c64e5fc40ec0a1f9889b272b67405d5affcaf461dd31c9c2ae64ec5",
         x86_64_linux: "a78ff2289f9fd048d523fa3508992a228de86ca231aa7d897c2afdbe9ea0edb9"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.motrix.native.sfl*",
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}#{arch}.AppImage", target: "Motrix.AppImage"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.#{os}"
  name "Motrix Beta"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]beta\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || !release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "motrix"
end
