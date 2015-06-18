cask :v1 => 'crossover' do
  version '14.1.1'
  sha256 '814cae6f4f2ea9d79000601b3a94a2721bc0940a4f4ad5e1e57d077fb8ab1b57'

  url 'https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-14.1.1.zip'
  name 'CrossOver'
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          :sha256 => '75c89f7ed67f8fde23d9348c94fd9a801dff8d8c836e34410a9278599597b55c'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
