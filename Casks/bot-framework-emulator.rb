cask "bot-framework-emulator" do
  version "4.13.0"
  sha256 "4a18a43ebdb077218e4c0044518e97344a9c8443c557efe909fb265556a33892"

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  name "Microsoft Bot Framework Emulator"
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
end
