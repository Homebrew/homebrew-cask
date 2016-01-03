cask 'crossover' do
  version '15.0.0'
  sha256 '62fb015ebd1b90cc53ee447b73b74665bbb09dd8e04fc76fe10667d78100916a'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :sha256 => '5b27ca654f165ff1e3003a4565a5c155787f7356c4bd603554a13e72cf9aeeed'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
