cask 'crossover' do
  version '18.0.0'
  sha256 '8e98856e56682362dcd5746873192736debdfbbe9e45b6f2430dffe694a8b192'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
