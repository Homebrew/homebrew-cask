cask 'pins' do
  version :latest
  sha256 :no_check

  # pinsapp.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
  url 'https://pinsapp.s3.amazonaws.com/downloads/Pins.dmg'
  name 'Pins'
  homepage 'https://pinsapp.com/'

  app 'Pins.app'

  zap trash: '~/Library/Containers/com.pinsapp.pins'
end
