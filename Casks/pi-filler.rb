cask 'pi-filler' do
  version :latest
  sha256 :no_check

  url 'http://ivanx.com/raspberrypi/files/PiFiller.zip'
  appcast 'http://ivanx.com/raspberrypi/',
          checkpoint: '3231cbc5d1c4d41d7e9122becd74c5f6b2284c541a46a9a8327668214f3d34a6'
  name 'Pi Filler'
  homepage 'http://ivanx.com/raspberrypi/'

  app 'Pi Filler.app'
end
