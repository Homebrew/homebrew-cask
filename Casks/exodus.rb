cask 'exodus' do
  version '20.7.17'
  sha256 '182c7c5eec0c41ee311ba86ef95765c2dcb77ee28af2c6405dfb5a09b44d9acc'

  url "https://downloads.exodus.io/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  auto_updates true

  app 'Exodus.app'

  zap trash: [
               '~/Library/Application Support/Exodus',
               '~/Library/Preferences/com.electron.exodus.helper.plist',
               '~/Library/Preferences/com.electron.exodus.plist',
               '~/Library/Saved Application State/com.electron.exodus.savedState',
             ]
end
