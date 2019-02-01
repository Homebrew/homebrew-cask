cask 'pinegrow' do
  version '5.11'
  sha256 'ea1364cb980cd37f9d68b6b8ae77269758db1797fe4e10cfb8ac16392f5b40d8'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
