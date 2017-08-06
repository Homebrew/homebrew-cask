cask 'botframework-emulator' do
  version '3.5.31'
  sha256 '98f924fda810f62c38539063a80a89dd424a4b67b8aec56a7e14a58a1a86f071'

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast 'https://github.com/Microsoft/BotFramework-Emulator/releases.atom',
          checkpoint: '6ccaec01a4d750ad8f4a07de1dbc5f3646ced5c8318f9a51f625180c3a110f30'
  name 'Microsoft Bot Framework Emulator'
  homepage 'https://github.com/Microsoft/BotFramework-Emulator'

  auto_updates true

  app 'botframework-emulator.app'

  uninstall quit: 'com.electron.botframework-emulator'

  zap delete: [
                '~/Library/Application Support/botframework-emulator',
                '~/Library/Caches/com.electron.botframework-emulator',
                '~/Library/Caches/com.electron.botframework-emulator.ShipIt',
                '~/Library/Preferences/com.electron.botframework-emulator.helper.plist',
                '~/Library/Preferences/com.electron.botframework-emulator.plist',
                '~/Library/Saved Application State/com.electron.botframework-emulator.savedState',
              ]
end
