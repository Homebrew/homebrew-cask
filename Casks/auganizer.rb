cask 'auganizer' do
  version '1.1.4'
  sha256 '9f35899fac64ad4880352998bab05dd33ca693ea6dd51db8d05ba8e0a2a55990'

  url "http://dl.auganizer.com/Auganizer-#{version}.dmg"
  appcast 'http://www.auganizer.com/updates/aurora.php',
          :sha256 => 'd3b78360ce50e0f2dfe6371a0a4b4433063c21ee7f74ad8301051b5d1bf070ba'
  name 'Auganizer'
  homepage 'http://auganizer.com/'
  license :commercial

  app 'Auganizer.app'

  zap :delete => [
                   '~/Library/Application Support/Auganizer',
                   '~/Library/Caches/com.auganizer.aurora',
                   '~/Library/Preferences/com.auganizer.aurora.australis.plist',
                   '~/Library/Preferences/com.auganizer.aurora.plist',
                   '~/Library/Saved Application State/com.auganizer.aurora.savedState',
                 ]
end
