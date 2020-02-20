cask 'bot-framework-emulator' do
  version '4.7.0'
  sha256 '1e7b0444538e81bb1b1a1ce6254e0474afcce21105d1da9766db6a517b78b54a'

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
