cask 'pixelstick' do
  version :latest
  sha256 :no_check

  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/appcastSSL.php?pid=100',
          :sha256 => '4617d2227172deb66bf90850194be0edadd3f72df20405e19a04460e2a736e08'
  name 'PixelStick'
  homepage 'https://plumamazing.com/mac/pixelstick'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PixelStick.app'
end
