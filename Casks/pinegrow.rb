cask 'pinegrow' do
  version '4.6'
  sha256 '81a2956dcf446f54a9c1e02fabede7a0259d0e8020d99a6c36780ee173e08fff'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
