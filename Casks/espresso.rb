cask 'espresso' do
  version '5.1.1'
  sha256 '728b5cb018479463bfb919533bfdcbd1788d1ec5b00ee312d3dc316d2e50527d'

  url "https://presto.espressoapp.com/downloads/Espresso%20v#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: 'c6be149ba0581d51a48418850d3378aa1523814e12f0eb066c552b0b0a6ec4bb'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
