cask 'crossover' do
  version '15.3.1'
  sha256 '5ac7a14a86ab409ea0b6791745de48399b96bb1042b0a346181fba9e2663bd49'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: '773a5bc5be3fef3c2c08927bbd052c4b3e0177e99e127eb76134717ff8f32213'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
