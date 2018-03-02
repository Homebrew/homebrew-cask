cask 'exodus' do
  version '1.46.0'
  sha256 'cf9d9ce532176b040e8f59e216845230799fb3881a8fc9a6b4f6b518446ab0c5'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'c6bb3fbfdbfe7533212ff535892f881a5c851baab6550489304bb56faf75537c'
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
