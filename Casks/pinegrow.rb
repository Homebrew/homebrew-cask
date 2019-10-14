cask 'pinegrow' do
  version '5.7'
  sha256 '1ffffd8247d741a0eab24372dfdc53fbaf71b766f0153557a8b5f49e87ea9bbd'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
