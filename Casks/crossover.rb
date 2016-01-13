cask 'crossover' do
  version '15.0.0'
  sha256 '62fb015ebd1b90cc53ee447b73b74665bbb09dd8e04fc76fe10667d78100916a'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :checkpoint => 'edda2d9e4993caecb60f6366e5b1bcd853882322f95634905b99abe67345ef11'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
