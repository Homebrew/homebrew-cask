cask 'bot-framework-emulator' do
  version '4.4.1'
  sha256 '2e7bcc5a84d3c89b7a3ddeccc6e0cad5da0e30e35ad97d3c4b9310f2b383b3d0'

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast 'https://github.com/Microsoft/BotFramework-Emulator/releases.atom'
  name 'Microsoft Bot Framework Emulator'
  homepage 'https://github.com/Microsoft/BotFramework-Emulator'

  auto_updates true

  app 'mac/Bot Framework Emulator.app'

  uninstall quit: 'com.electron.botframework-emulator'

  zap trash: [
               '~/Library/Application Support/botframework-emulator',
               '~/Library/Caches/com.electron.botframework-emulator',
               '~/Library/Caches/com.electron.botframework-emulator.ShipIt',
               '~/Library/Preferences/com.electron.botframework-emulator.helper.plist',
               '~/Library/Preferences/com.electron.botframework-emulator.plist',
               '~/Library/Saved Application State/com.electron.botframework-emulator.savedState',
             ]
end
