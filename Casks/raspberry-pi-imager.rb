cask 'raspberry-pi-imager' do
  version :latest
  sha256 :no_check

  url 'https://downloads.raspberrypi.org/imager/imager.dmg'
  name 'Raspberry Pi Imager'
  homepage 'https://www.raspberrypi.org/downloads/'

  app 'Raspberry Pi Imager.app'

  zap trash: '~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState'
end
