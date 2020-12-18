cask "bot-framework-emulator" do
  version "4.11.0"
  sha256 "9e43309994b35d26ec4b959f7ec34565e45692198825f4176dc1b4b188a21dcd"

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast "https://github.com/Microsoft/BotFramework-Emulator/releases.atom"
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
