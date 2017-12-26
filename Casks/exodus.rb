cask 'exodus' do
  version '1.41.0'
  sha256 'd6141dd7beaf6fb9b462ac0f2734a7fa54b3f9e1324d57037a68676ec93a1ebf'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '9a56c7a8fdb2c86f8b8b0c72d8fe555ef137c4bc857ffc6c6b64ad6365311411'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'

  zap trash: [
               '~/Library/Application Support/Exodus',
               '~/Library/Preferences/com.electron.exodus.helper.plist',
               '~/Library/Preferences/com.electron.exodus.plist',
               '~/Library/Saved Application State/com.electron.exodus.savedState',
             ]
end
