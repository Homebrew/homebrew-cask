cask 'fotowall' do
  version '0.8.2'
  sha256 'f49ad020eb6d36b9ad5492edd24ce608aef4466b727b5d0811ed4218b35d0c8c'

  # fotowall.googlecode.com was verified as official when first introduced to the cask
  url "https://fotowall.googlecode.com/files/Fotowall-#{version}-OSX.dmg"
  name 'Fotowall'
  homepage 'http://www.enricoros.com/opensource/fotowall/'
  license :gpl

  app 'Fotowall.app'

  caveats do
    discontinued
  end
end
