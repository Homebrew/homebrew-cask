cask 'applepi-baker' do
  version '2.1.7'
  sha256 '2fa7398b4791b74d914d3cf44c7dd21feecf3e60a4e35af08459c127543900ab'

  url "https://www.tweaking4all.com/downloads/raspberrypi/ApplePi-Baker-v#{version}.dmg"
  name 'ApplePi-Baker'
  homepage 'https://www.tweaking4all.com/hardware/raspberry-pi/applepi-baker-v2/'

  app 'ApplePiBaker.app'

  zap trash: [
               '~/Library/Caches/com.Tweaking4All.PiBaker',
               '~/Library/Preferences/ApplePi-Baker',
               '~/Library/Preferences/com.Tweaking4All.PiBaker.plist',
               '~/Library/Saved Application State/com.tweaking4all.ApplePiBaker.savedState',
               '~/Library/WebKit/com.Tweaking4All.PiBaker',
             ]
end
