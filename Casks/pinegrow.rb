cask 'pinegrow' do
  version '5.97'
  sha256 '26b038025ceb337259dd528d1d156f6a4d424370acc464e80350095beee03f71'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
