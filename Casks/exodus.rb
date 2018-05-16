cask 'exodus' do
  version '1.51.2'
  sha256 '4f2f01ec195be57ad290a808c936a8e3c306de1394cec2e3b000c22a68108d07'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'd8cc216be0c83eac4b7aca57201d1ca99cee2344bd9a6f70c5fce19d81f3e835'
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
