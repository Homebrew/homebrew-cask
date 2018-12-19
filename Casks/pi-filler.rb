cask 'pi-filler' do
  version '2.0.1'
  sha256 'f52d661a1c777d64432c89e925a40f5e7ced45258549249fbdb34b17be4d4314'

  url 'http://ivanx.com/raspberrypi/files/PiFiller.zip'
  appcast 'http://ivanx.com/raspberrypi/'
  name 'Pi Filler'
  homepage 'http://ivanx.com/raspberrypi/'

  app 'Pi Filler.app'
end
