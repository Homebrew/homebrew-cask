cask 'bot-framework-emulator' do
  version '4.9.0'
  sha256 '94f2b2c1c6ecfc493ca0fd7c36196c302c84d67fa9e02aefe641553a21cc8822'

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast 'https://github.com/Microsoft/BotFramework-Emulator/releases.atom'
  name 'Microsoft Bot Framework Emulator'
  homepage 'https://github.com/Microsoft/BotFramework-Emulator'

  auto_updates true

  app 'Bot Framework Emulator.app'

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
