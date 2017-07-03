cask 'pinegrow-web-designer' do
  version '3.01'
  sha256 '4939f9df33471a4390fdcf3b49ab3d9bb20311b2d5eab860a9ce845929958092'

  # pinegrow.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://pinegrow.s3.amazonaws.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow Web Designer'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow Web Designer.app'
end
