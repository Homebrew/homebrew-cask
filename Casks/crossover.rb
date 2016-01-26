cask 'crossover' do
  version '15.0.1'
  sha256 '2f31f4bc208826b50a3fe5839b725a852ed6b4c7ed0e8723fce41157eb180ed3'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: 'e67c35e4848bcd1c4dc99902269450c6966727c01e92aa93cc1b3d0cfd8000e4'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'
  license :commercial

  app 'CrossOver.app'
end
