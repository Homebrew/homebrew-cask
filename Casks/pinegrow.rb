cask 'pinegrow' do
  version '4.4'
  sha256 'ec64458f6ab4c7f51febaa49e472a6d50327f258d92c5acdf53e39761156c741'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
