cask :v1 => 'crossover' do
  version '14.1.6'
  sha256 '17eb7c8c19868abcec42c9ab8a43e20c32219c36da01ea2f831e5fddfeef33c6'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  name 'CrossOver'
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :sha256 => 'b3fb4692b914070c69ecc2ad4f7b4fa25a93016bb701760ac33c6741388a232e'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
