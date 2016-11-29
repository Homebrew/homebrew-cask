cask 'flash-decompiler-trillix' do
  version '5.3.1301'
  sha256 '5b1313197c1e311db7aefc1764785187a5f5fd39ea5aa689587761ff42232d9e'

  url 'http://www.flash-decompiler.com/download/flash_decompiler.dmg'
  appcast 'http://www.eltima.com/download/fd-mac-update/fd-mac.xml',
          checkpoint: '78c0a13b8ac9358a1a1c29d0198ac13ad2674839b923126d13f3135479703610'
  name 'Flash Decompiler Trillix'
  homepage 'http://www.flash-decompiler.com/mac.html'

  app 'Flash Decompiler Trillix.app'
end
