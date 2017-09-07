cask 'crossover' do
  version '16.2.5'
  sha256 '4a9a4ab8020cdff302be32b79050453563e2d309307a02ee23a4bd0c01a3b1e0'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: 'e3fab70c871c49adbbe5423db6b1deb07160108d2d0970808569faa532c75b4d'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
