cask 'auganizer' do
  version '1.1.4'
  sha256 '9f35899fac64ad4880352998bab05dd33ca693ea6dd51db8d05ba8e0a2a55990'

  url "http://dl.auganizer.com/Auganizer-#{version}.dmg"
  appcast 'http://www.auganizer.com/updates/aurora.php',
          :sha256 => 'cb6a73cecc9fb1fa3181cf8de2b34510d9f808d0bb30f0a4c68dcab82c2cc891'
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
