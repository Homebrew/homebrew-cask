cask 'exodus' do
  version '20.1.17'
  sha256 'f79f606646ea56d63762fd1adfa6b707fe7e9e1122bcf85b593d4da968e95552'

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
