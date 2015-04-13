cask :v1 => 'auganizer' do
  version '1.1.4'
  sha256 '9f35899fac64ad4880352998bab05dd33ca693ea6dd51db8d05ba8e0a2a55990'

  url "http://dl.auganizer.com/Auganizer-#{version}.dmg"
  app 'Auganizer.app'
  name 'Auganizer'
  homepage 'http://auganizer.com/'
  license :commercial

  zap :delete => [
                  '~/Library/Application Support/Auganizer',
                  '~/Library/Caches/com.auganizer.aurora',
                  '~/Library/Preferences/com.auganizer.aurora.australis.plist',
                  '~/Library/Preferences/com.auganizer.aurora.plist',
                  '~/Library/Saved Application State/com.auganizer.aurora.savedState'
                 ]
end
