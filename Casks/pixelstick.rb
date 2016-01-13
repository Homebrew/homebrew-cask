cask 'pixelstick' do
  version :latest
  sha256 :no_check

  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/appcastSSL.php?pid=100',
          :checkpoint => '00aaebb986220c50209297e9402c88d9193a29cf90f0702d3f05265cb4fff78f'
  name 'PixelStick'
  homepage 'https://plumamazing.com/mac/pixelstick'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PixelStick.app'
end
