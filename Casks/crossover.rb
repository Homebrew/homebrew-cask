cask :v1 => 'crossover' do
  version '14.1.4'
  sha256 '613456ea10d16d17670501f2f1e8c19d9584e31c99efbf6363380139418a2876'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  name 'CrossOver'
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :sha256 => '75c89f7ed67f8fde23d9348c94fd9a801dff8d8c836e34410a9278599597b55c'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
