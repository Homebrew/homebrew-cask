cask 'applepi-baker' do
  version '2.2.1'
  sha256 '200660382ffef074861c11c086bcaa7dabfea51f7b26169df886a725c681ba3e'

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
