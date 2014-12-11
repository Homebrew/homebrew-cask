cask :v1 => 'dragondisk' do
  version '1.05'
  sha256 '66499e1aa9ca322a3a14f74710fe78675f2d4c11df754cc4a3912e1165c7bc39'

  url "http://download.dragondisk.com/DragonDisk-#{version}.dmg"
  homepage 'http://www.dragondisk.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'dragondisk.app'
end
