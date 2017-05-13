cask 'dragondisk' do
  version '1.05'
  sha256 'a2797d416b712ce1b7a7a8a8a4d791894627e6c8819e1e2241efc7ecf97b7f3b'

  # download.dragondisk.com/ was verified as official when first introduced to the cask
  url "http://download.dragondisk.com/DragonDisk-#{version}.dmg"
  name 'DragonDisk'
  homepage 'http://www.s3-client.com/'

  app 'dragondisk.app'
end
