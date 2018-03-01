cask 'exodus' do
  version '1.45.0'
  sha256 'b3d38a1446c97d21b3e9bb45632b3cf556580853a24a9d6d60d37b1d09bf2ed4'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'b846d990802504b6c1f9e87b27e84cb978786ff86e9a8086bc975ba96d9caff3'
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
