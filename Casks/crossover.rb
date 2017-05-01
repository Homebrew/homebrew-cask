cask 'crossover' do
  version '16.2.0'
  sha256 '45dc433db3b75d6ecf058e1b9d89d885cbb6f96d29dc90c2c84dc2ebf0b9ca02'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: '3bd3db7874fe5b1031706588acf7433b745cb21770a8dc28e4507a5d4f89c933'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
