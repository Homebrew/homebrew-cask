cask 'pixelstick' do
  version :latest
  sha256 :no_check

  url 'https://plumamazing.com/bin/pixelstick/pixelstick.zip'
  appcast 'https://plumamazing.com/appcastSSL.php?pid=100',
          :sha256 => 'a35fc57bf6f39ae049b493cb69fed689a646349f5a8bf718dd78375841cd4545'
  name 'PixelStick'
  homepage 'https://plumamazing.com/mac/pixelstick'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PixelStick.app'
end
