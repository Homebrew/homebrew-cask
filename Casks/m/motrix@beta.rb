cask "motrix@beta" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64", linux: "-x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.0-beta.32"
  sha256 arm:          "a98f22cf47572452506f5c0710d89fa2c36b44a0d6dd4e8d6319ac20056d2197",
         intel:        "a62500105f77e8a2f3f69e66de51864313938e5a7ded525ca27591d1c48d5273",
         arm64_linux:  "41d25090fc58b608574f3ab67789d175ae61838676d94424b629726ca2fa3bb2",
         x86_64_linux: "dece56bab47b0d6cf737d95aa3e51c117b7906f47987d02c9a9e79a9e15cd917"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
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
