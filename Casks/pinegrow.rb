cask 'pinegrow' do
  version '4.91'
  sha256 '1aad4439255a3fce131783f97161c1666b196c0bc7288c75dc2cbd9aa90657ac'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
