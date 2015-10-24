cask :v1 => 'crossover' do
  version '14.1.10'
  sha256 'd52b5200df3ba749709318bba4280d9e245f37583402c8f9e037dcbf08f63790'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  name 'CrossOver'
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :sha256 => 'bf7861be8ff858c5ff7b1d49056a6f4d3d43c8d3f4bd388d450c03e8a6c8e968'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
