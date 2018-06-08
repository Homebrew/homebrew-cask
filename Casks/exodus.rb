cask 'exodus' do
  version '1.53.0'
  sha256 '8b1a5e823c7569423b7d1720593e4408d60ccb9dd3edfd0d19b3a2d2c8123809'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '301b618e9d6e9639e44f03f2337b8920f7bc20c773198c4261175ad06d49f398'
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
