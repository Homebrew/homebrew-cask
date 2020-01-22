cask 'pinegrow' do
  version '5.92'
  sha256 '2ea546cafa691c0836c6ed7f9ea822d080d291ede96b59fe0440132b632bee86'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
