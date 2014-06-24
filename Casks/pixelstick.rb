class Pixelstick < Cask
  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/appcastSSL.php?pid=100'
  homepage 'http://plumamazing.com/mac/pixelstick'
  version 'latest'
  sha256 :no_check
  link 'PixelStick.app'
end
