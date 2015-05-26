cask :v1 => 'fotowall' do
  version '0.8.2'
  sha256 'f49ad020eb6d36b9ad5492edd24ce608aef4466b727b5d0811ed4218b35d0c8c'

  # googlecode.com is the official download host per the vendor homepage
  url "http://fotowall.googlecode.com/files/Fotowall-#{version}-OSX.dmg"
  name 'Fotowall'
  homepage 'http://www.enricoros.com/opensource/fotowall/'
  license :oss

  app 'Fotowall.app'
end
