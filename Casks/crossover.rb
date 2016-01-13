cask 'crossover' do
  version '15.0.0'
  sha256 '62fb015ebd1b90cc53ee447b73b74665bbb09dd8e04fc76fe10667d78100916a'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :checkpoint => 'd8a757753920f4bb81ad9567070f4852750f8bef67d1bce4b2d780184f10eac4'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
