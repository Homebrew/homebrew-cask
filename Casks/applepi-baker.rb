cask 'applepi-baker' do
  version '2.1.6'
  sha256 '401aacfa15b45702782e9815d55a7c39cfc38f0d9fb6e517ea463295c7611d9c'

  url "https://www.tweaking4all.com/downloads/raspberrypi/ApplePi-Baker-v#{version}.dmg"
  name 'ApplePi-Baker'
  homepage 'https://www.tweaking4all.com/hardware/raspberry-pi/applepi-baker-v2/'

  app 'ApplePi-Baker.app'

  zap trash: [
               '~/Library/Caches/com.Tweaking4All.PiBaker',
               '~/Library/Preferences/ApplePi-Baker',
               '~/Library/Preferences/com.Tweaking4All.PiBaker.plist',
               '~/Library/Saved Application State/com.tweaking4all.ApplePiBaker.savedState',
               '~/Library/WebKit/com.Tweaking4All.PiBaker',
             ]
end
