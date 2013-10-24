class Ksdiff < Cask
  url 'https://updates.blackpixel.com/latest?app=ksdiff&v=111'
  homepage 'http://www.kaleidoscopeapp.com/ksdiff2'
  version '2.0.1 (111)'
  sha1 '95a6c89123e76b060657d29a90fa8016e68062d1'
  install 'Install ksdiff.pkg'
  uninstall :pkgutil => 'com.blackpixel.kaleidoscope.ksdiff.installer.pkg'
end
