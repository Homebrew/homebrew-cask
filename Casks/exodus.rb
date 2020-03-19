cask 'exodus' do
  version '20.3.13'
  sha256 '73c0fa8ead27f8e1e7185ac508293ddfad43acd9e87957dea0415ecf8e9af525'

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
