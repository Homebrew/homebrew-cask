cask 'crossover' do
  version '15.2.0'
  sha256 'd3da43171f796e3b148cd2caafa21fd10661aa8a4b7cc40a0b88fd01af0c5939'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: '5867272fb8c4b28b67a932d5fa166d00e6fb532a42546e42a0c8e63c913f91f3'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
