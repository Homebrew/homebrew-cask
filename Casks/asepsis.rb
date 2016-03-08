cask 'asepsis' do
  version '1.5.2'
  sha256 'b7c101fd216364423d7de9009aa9e82934042f0403479746fbe604a8b5f3883b'

  url "http://downloads.binaryage.com/Asepsis-#{version}.dmg"
  name 'Asepsis'
  homepage 'http://asepsis.binaryage.com/'
  license :bsd

  pkg 'Asepsis.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.asepsis'
end
