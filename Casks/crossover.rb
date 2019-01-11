cask 'crossover' do
  version '18.1.0'
  sha256 '6e40a10d6bcc0e01f62d60dd3c2a8fd166467e8e5a5072d2dfc1120562210025'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
