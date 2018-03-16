cask 'exodus' do
  version '1.47.0'
  sha256 '47df69ff3a55ba57a4548d7811b4bed192e8828394006a3683936b0b79ccb1c1'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '0f49b2909378ee7f3af530c913b99eee4b169f4cd578a4d7340d5fb009570ad7'
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
