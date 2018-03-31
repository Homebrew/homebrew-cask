cask 'exodus' do
  version '1.48.0'
  sha256 '5620ea44668ce4531db7b3b46c4f417cc5d47e1df647bd98f315e98c33a4c882'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '1b1dc32708792b34c6ad3bf68a9bf7b7958e5addcdf8fd0bfaf8b4b98a3c33e9'
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
