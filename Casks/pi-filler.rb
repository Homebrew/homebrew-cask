cask 'pi-filler' do
  version :latest
  sha256 :no_check

  url 'http://ivanx.com/raspberrypi/files/PiFiller.zip'
  name 'Pi Filler'
  homepage 'http://ivanx.com/raspberrypi/'

  app 'Pi Filler.app'
end
