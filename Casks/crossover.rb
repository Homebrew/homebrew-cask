cask 'crossover' do
  version '16.0.0'
  sha256 '4b3f60b53a2d1b6d07ac5fe6fb795d8f32d44eafb7436d6630780bd5ebde0f70'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: '904179f711f72ab7332ef53133f119b94cfa8e82b906dc3837993c3910cb526e'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
