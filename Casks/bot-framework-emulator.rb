cask "bot-framework-emulator" do
  version "4.14.0"
  sha256 "c3ce4898a645819b3d8a59289fcecc58edbd58ade0164c820c5294bf21be0a52"

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
