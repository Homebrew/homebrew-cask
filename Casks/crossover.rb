cask 'crossover' do
  version '19.0.0'
  sha256 '16cb65aaaf0254fe5b2f1887d33d70b4cb53da27c7680d256256c909c6311549'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
