cask 'crossover' do
  version '16.1.0'
  sha256 'ed623c9d384c0b112b8ee0e6f139b9ae9b7f2eac967b2718764b643028f1b9bf'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: '87064614109cf890c11d01b55e9e73596282a03d029af3e4a33857723f67da09'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
