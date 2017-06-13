cask 'flash-decompiler-trillix' do
  version '5.3.1301'
  sha256 '5b1313197c1e311db7aefc1764785187a5f5fd39ea5aa689587761ff42232d9e'

  url 'http://www.flash-decompiler.com/download/flash_decompiler.dmg'
  appcast 'https://www.eltima.com/download/fd-mac-update/fd-mac.xml',
          checkpoint: '4d828404e0e754bce1c5fc7fcfe9d9011c45bd9327ffb4dcf03dfdff1eabf0d0'
  name 'Flash Decompiler Trillix'
  homepage 'http://www.flash-decompiler.com/mac.html'

  app 'Flash Decompiler Trillix.app'
end
