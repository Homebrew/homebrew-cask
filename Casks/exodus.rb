cask 'exodus' do
  version '1.47.2'
  sha256 'bfdaf57e53c13c58cf324b0b5314d426ff10bbd89cae9e4fce04f29b84964dcf'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '3659c6095faa1d9f23ca4ff208e3b9fa48f8776500ad759f4b39698715a6f81e'
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
