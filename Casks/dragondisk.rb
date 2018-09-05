cask 'dragondisk' do
  version '1.05'
  sha256 '66499e1aa9ca322a3a14f74710fe78675f2d4c11df754cc4a3912e1165c7bc39'

  # download.dragondisk.com was verified as official when first introduced to the cask
  url "http://download.dragondisk.com/DragonDisk-#{version}.dmg"
  name 'DragonDisk'
  homepage 'http://www.s3-client.com/'

  app 'dragondisk.app'
end
