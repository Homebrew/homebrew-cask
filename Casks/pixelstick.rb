cask :v1 => 'pixelstick' do
  version :latest
  sha256 :no_check

  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/appcastSSL.php?pid=100'
  homepage 'http://plumamazing.com/mac/pixelstick'
  license :unknown    # todo: improve this machine-generated value

  app 'PixelStick.app'
end
