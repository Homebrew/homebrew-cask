cask 'auganizer' do
  version '2.0'
  sha256 '0d65dc5d005a10d1a6784ff5d0466f99d71059028b620d38488d4591d35bc260'

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
