cask 'pinegrow' do
  version '5.5'
  sha256 '437b42e4c1f6f8eddf219b36b73166abd52ec5d29f1a199682e41565e4b7076c'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
