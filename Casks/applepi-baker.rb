cask 'applepi-baker' do
  version :latest
  sha256 :no_check

  url 'http://www.tweaking4all.com/downloads/raspberrypi/ApplePi-Baker.zip',
      cookies: {
                 'gdbbx_session_activity' => '0',
               }
  name 'ApplePi-Baker'
  homepage 'http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/'

  app 'ApplePi-Baker.app'
end
