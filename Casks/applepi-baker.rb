cask 'applepi-baker' do
  version '2.1.3'
  sha256 '3015623b8422e5b8a46e18b4dffff1e872c8d3982d9cc99b4da722eb9d0d0829'

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
