cask :v1 => 'crossover' do
  version '14.1.8'
  sha256 'c5a4ce1fc7f36685bc0b2a982d1e4dbb2056076d13f2824d27713ad397233353'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  name 'CrossOver'
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :sha256 => '63ec2ef43db3f2029bd16cb1ef61a8899f568e6c22d2bb35b7361abbcd476edc'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
