cask "bot-framework-emulator" do
  version "4.14.1"
  sha256 "274363551f54f64093437ad81109098639c62d70449a5f4afb0a0bc6033ce270"

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  name "Microsoft Bot Framework Emulator"
  desc "Test and debug chat bots built with the Bot Framework SDK"
  homepage "https://github.com/Microsoft/BotFramework-Emulator"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^botframework[._-]emulator.*?v?(\d+(?:\.\d+)+)[._-]mac\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  auto_updates true

  app "Bot Framework Emulator.app"

  uninstall quit: "com.electron.botframework-emulator"

  zap trash: [
    "~/Library/Application Support/botframework-emulator",
    "~/Library/Caches/com.electron.botframework-emulator",
    "~/Library/Caches/com.electron.botframework-emulator.ShipIt",
    "~/Library/Preferences/com.electron.botframework-emulator.helper.plist",
    "~/Library/Preferences/com.electron.botframework-emulator.plist",
    "~/Library/Saved Application State/com.electron.botframework-emulator.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
