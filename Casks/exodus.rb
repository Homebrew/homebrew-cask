cask 'exodus' do
  version '1.51.3'
  sha256 '539656cf71583358aff23a4e3a087c010dc01d5a716cba08944a81d10d671447'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '72d13d2cb59682b3cbaf59f4c917d3d3f955c082cf59c8c34d808cdc1f5750f6'
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
