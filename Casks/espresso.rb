cask 'espresso' do
  version '5.1.1'
  sha256 '728b5cb018479463bfb919533bfdcbd1788d1ec5b00ee312d3dc316d2e50527d'

  url "https://espressoapp.com/presto/downloads/Espresso%20v#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: 'a5b20ab9e901cdb75fa3bfbdf8036acaa555e2f774fc3b0e97bd4d384be5765b'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
