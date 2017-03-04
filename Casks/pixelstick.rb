cask 'pixelstick' do
  version '2.9'
  sha256 '3aa737ccb1aa05e20d145c73b6925aef437d3f91de0b230dd9d630d79856415b'

  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/appcastSSL.php?pid=100',
          checkpoint: '00aaebb986220c50209297e9402c88d9193a29cf90f0702d3f05265cb4fff78f'
  name 'PixelStick'
  homepage 'https://plumamazing.com/mac/pixelstick'

  app 'PixelStick.app'
end
