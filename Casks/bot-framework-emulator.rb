cask "bot-framework-emulator" do
  version "4.12.0"
  sha256 "08bb9c2ea5d29cf108299931fb42e96ed3c6f9aa32952e151a122ecc573cb152"

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
