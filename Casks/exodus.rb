cask 'exodus' do
  version '1.42.0'
  sha256 '94c09cfed194c5a9cf6ad932bda92ca535a7c589390aa6f62eeb99497ebdaffb'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '06c703709aa152a41b0acb85eda05a0a17e1bd3e4784b21378db7fc72b53d09f'
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
