cask 'exodus' do
  version '1.50.1'
  sha256 '99bb667aa2e12e72bfff2debb71f4385584e8f7086f39b30f2c77a02da7ef5ef'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '452c6b9fe49bf4671f3f77a7696ac0abae609a43f395ca528c6832cea00e6281'
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
