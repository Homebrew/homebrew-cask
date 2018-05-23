cask 'pins' do
  version :latest
  sha256 :no_check

  url 'http://pinsapp.com/download/Pins.dmg'
  name 'Pins'
  homepage 'http://pinsapp.com/'

  app 'Pins.app'

  zap trash: '~/Library/Containers/com.pinsapp.pins'
end
