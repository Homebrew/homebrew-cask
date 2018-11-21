cask 'pinegrow' do
  version '5.0'
  sha256 '4845f8a0e153ebfbf7a04937b4179909b955a31f9db172d5116a93a4afd5cf76'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
