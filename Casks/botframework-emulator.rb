cask 'botframework-emulator' do
  version '3.5.29'
  sha256 '9dd081e794ca84025ebbcb465c4f991cd2808a8bda9ca26dd4ac651a93fa6538'

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast 'https://github.com/Microsoft/BotFramework-Emulator/releases.atom',
          checkpoint: '55a8b628f1cd6aa5f2cc867021c534df44c5e918d492fac98b132fe4b49039de'
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
