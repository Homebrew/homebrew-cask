cask 'crossover' do
  version '15.1.0'
  sha256 '9bfee41dc0c35d2edba78ec8d9eab265f4cbaff9cd56fecf965d68ab0000179b'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: 'f5ac93cca5dc7e400fcf33f589b6b895a3132d40c6e94896cca987bbc5501ea8'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
