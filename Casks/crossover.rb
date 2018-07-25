cask 'crossover' do
  version '17.5.1'
  sha256 'c0eaf08911b3d65d40a3ce4cb27b9d2a401a71c8aacd3dcd5f9a59f144ac83b9'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
