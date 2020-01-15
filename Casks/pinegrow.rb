cask 'pinegrow' do
  version '5.91'
  sha256 '0dab3c49ac1f98a035a760eacdcff855d2c8c4ca59a04697bc10c5be44de9a64'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
