cask 'pinegrow' do
  version '4.5'
  sha256 '770dc7fc225f070de2d62c5a976e7179afd1b7ee74935b7b0da255012625f8ef'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
