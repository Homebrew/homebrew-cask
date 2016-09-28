cask 'crossover' do
  version '15.3.0'
  sha256 '8b880e975d26320b063fe8a1e43129f101e360a472a7ecfa22da5436580d0d72'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: '9a3a22750e6a9afeddafffb9e4a7e65d2fd780959c8b535a445aaa5ef06b1f15'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
