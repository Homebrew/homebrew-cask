cask 'pi-filler' do
  version '1.3'
  sha256 '06179b365be0f86027f89ab634e98f5101899ccfe5378f44b4b9330aedf0a9b3'

  url 'http://ivanx.com/raspberrypi/files/PiFiller.zip'
  appcast 'http://ivanx.com/raspberrypi/',
          checkpoint: '3231cbc5d1c4d41d7e9122becd74c5f6b2284c541a46a9a8327668214f3d34a6'
  name 'Pi Filler'
  homepage 'http://ivanx.com/raspberrypi/'

  app 'Pi Filler.app'
end
