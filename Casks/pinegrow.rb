cask 'pinegrow' do
  version '5.41'
  sha256 '06310d68c9748e033002ae1326a36fb377c4193ccc4ef857a9067bb292d8024f'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
