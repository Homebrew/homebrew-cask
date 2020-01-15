cask 'crossover' do
  version '19.0.1'
  sha256 'dbf263f75f2e61bcb19062b86bbbbd32cf8e474be853082bc681bca780a08643'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
