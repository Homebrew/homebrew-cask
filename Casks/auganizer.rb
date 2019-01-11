cask 'auganizer' do
  version '2.0.1'
  sha256 '5918ec92b0a7167aaeb67f039e68dcd74d21f44048fb84993d2261cf8eb8f4ac'

  url "http://dl.auganizer.com/Auganizer-#{version}.dmg"
  appcast 'https://www.auganizer.com/updates/aurora.php'
  name 'Auganizer'
  homepage 'https://auganizer.com/'

  app 'Auganizer.app'

  zap trash: [
               '~/Library/Application Support/Auganizer',
               '~/Library/Caches/com.auganizer.aurora',
               '~/Library/Preferences/com.auganizer.aurora.australis.plist',
               '~/Library/Preferences/com.auganizer.aurora.plist',
               '~/Library/Saved Application State/com.auganizer.aurora.savedState',
             ]
end
