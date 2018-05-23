cask 'pinegrow' do
  version '4.71'
  sha256 'cac90d6122bf92b1071af2a2b74532a9b3b95b4eb6ccf9a30389c8058645c817'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
