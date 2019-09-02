cask 'bot-framework-emulator' do
  version '4.5.2'
  sha256 '397900f4de5f83f78cf03c3ad9ab4e420bb400b67661660a1560ea979d958c36'

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
