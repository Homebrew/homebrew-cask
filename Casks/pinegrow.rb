cask 'pinegrow' do
  version '4.3'
  sha256 '970b3216e58af356e7688b680f8a3384a1cc1a0d0869ee51a1295a4aa3cf6a55'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
