cask 'crossover' do
  version '17.1.0'
  sha256 'a6c8dd002180f5289fe0df649bc821571e0703ef4a24cc4b2cf4dcda0f99fd86'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: '571c67245e2181a0a0cff8bb71559de8537ede2a25b36ae93501def4dd96bc91'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
