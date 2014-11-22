cask :v1 => 'asepsis' do
  version '1.5'
  sha256 'b7bf18dfe58612de89f744e11e25f6eb6bb708a48941fc975d55a614716e1436'

  url "http://downloads.binaryage.com/Asepsis-#{version}.dmg"
  homepage 'http://asepsis.binaryage.com/'
  license :bsd

  pkg 'Asepsis.pkg'

  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'
end
