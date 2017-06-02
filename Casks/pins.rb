cask 'pins' do
  version :latest
  sha256 :no_check

  url 'http://pinsapp.com/download/Pins.dmg'
  name 'Pins'
  homepage 'https://pinsapp.com/'

  app 'Pins.app'

  zap delete: '~/Library/Containers/com.pinsapp.pins'
end
