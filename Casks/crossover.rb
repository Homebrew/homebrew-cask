cask 'crossover' do
  version '18.5.0'
  sha256 'a29b3489883e68da10aed0f9493340629065561c27f63cc2c12508df1eeafe90'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
