cask 'crossover' do
  version '17.5.0'
  sha256 '04a2d18d991ee6a32f6538d26019d8702dc1fe9fbafd36908601678ed701a87b'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
