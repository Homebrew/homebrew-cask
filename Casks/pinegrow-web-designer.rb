cask 'pinegrow' do
  version '3.1'
  sha256 '4939f9df33471a4390fdcf3b49ab3d9bb20311b2d5eab860a9ce845929958092'

  # pinegrow.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
