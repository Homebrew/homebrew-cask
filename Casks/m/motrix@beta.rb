cask "motrix@beta" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64", linux: "-x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.0-beta.28"
  sha256 arm:          "3f197f6cff314282da59fe063906c66cbc3b95ed0415591325695591a0fb599a",
         intel:        "aff6bc6a2d27e0ebed675516bf4a17fda6e7a0e7e347288286961761e77f1ddb",
         arm64_linux:  "f40323e8aeec5d6532c46cd6b1e4f6d56b9780fa886c8419bf79a38abb22daa4",
         x86_64_linux: "0d1e96eec3e94f06ce523db144db2f2ef4e2fbf111233876c8b65fd3587054ef"

  on_macos do
    depends_on macos: :monterey

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
