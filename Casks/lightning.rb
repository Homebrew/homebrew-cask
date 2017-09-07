cask 'lightning' do
  version '1.8.6'
  sha256 'c551fee0e7dc9949683a555406f94f2d5300af3459f9c85c032a938d0f67d4a6'

  url "https://fwdl.filewave.com/lightning/FileWave_Lightning-#{version}.dmg"
  name 'FileWave Lightning'
  homepage 'https://www.filewave.com/products/imaging/lightning-thunderbolt'

  depends_on macos: '>= :lion'

  app 'Lightning.app'
end
