cask 'fotowall' do
  version '0.8.2'
  sha256 'f49ad020eb6d36b9ad5492edd24ce608aef4466b727b5d0811ed4218b35d0c8c'

  # storage.googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/google-code-archive-downloads/v1/code.google.com/fotowall/Fotowall-#{version}-OSX.dmg"
  name 'Fotowall'
  homepage 'http://www.enricoros.com/opensource/fotowall/'
  license :gpl

  app 'Fotowall.app'

  caveats do
    discontinued
  end
end
