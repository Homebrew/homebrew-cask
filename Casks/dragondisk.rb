cask 'dragondisk' do
  version '1.05'
  sha256 '66499e1aa9ca322a3a14f74710fe78675f2d4c11df754cc4a3912e1165c7bc39'

  url "http://download.dragondisk.com/DragonDisk-#{version}.dmg"
  name 'DragonDisk'
  homepage 'http://www.dragondisk.com/'
  license :gratis

  app 'dragondisk.app'
end
