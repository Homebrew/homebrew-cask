cask 'botframework-emulator' do
  version '3.5.32'
  sha256 '94b013e6072052864680425d9851cf682f019ebd8083c2b9a045f815f5795e25'

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast 'https://github.com/Microsoft/BotFramework-Emulator/releases.atom',
          checkpoint: 'f9238505ed3f49a3709c1dba097c7c96479e7f7667025bed1517a80de59eef17'
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
