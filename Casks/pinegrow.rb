cask 'pinegrow' do
  version '5.93'
  sha256 '330a5738d8bbc1310b34c50f382637df47357a4505e2d2ae1028e8dbc6f43098'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
