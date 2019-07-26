cask 'pinegrow' do
  version '5.6'
  sha256 '21b68d9cff80ea439c81b880ba956942a4a8df83048510c087b1b51e79e0500b'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
