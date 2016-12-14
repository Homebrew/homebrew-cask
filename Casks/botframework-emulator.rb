cask 'botframework-emulator' do
  version '3.5.22'
  sha256 'eb658b3fd0825d3b332aeaafc8c3451a297a6018e1f48232dc84a8a0fb42aed8'

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast 'https://github.com/Microsoft/BotFramework-Emulator/releases.atom',
          checkpoint: '3e730926a4e5ac193a0cebd8be9fc3f0de7a73d9fbe4c2470275a282c6c4df63'
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
