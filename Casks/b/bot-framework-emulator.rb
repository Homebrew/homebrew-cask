cask "bot-framework-emulator" do
  version "4.14.1"
  sha256 "274363551f54f64093437ad81109098639c62d70449a5f4afb0a0bc6033ce270"

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  name "Microsoft Bot Framework Emulator"
  desc "Test and debug chat bots built with the Bot Framework SDK"
  homepage "https://github.com/Microsoft/BotFramework-Emulator"

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
