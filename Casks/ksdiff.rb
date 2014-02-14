class Ksdiff < Cask
  url 'http://cdn.kaleidoscopeapp.com/releases/ksdiff-111.zip'
  homepage 'http://www.kaleidoscopeapp.com/ksdiff2'
  version '2.0.1 (111)'
  sha1 '95a6c89123e76b060657d29a90fa8016e68062d1'
  install 'Install ksdiff.pkg'
  uninstall :pkgutil => 'com.blackpixel.kaleidoscope.ksdiff.installer.pkg'
  # todo: conflicts_with_cask kaleidoscope
  caveats <<-EOS.undent
    The #{title} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
    EOS
end
