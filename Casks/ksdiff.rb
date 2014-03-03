class Ksdiff < Cask
  url 'http://cdn.kaleidoscopeapp.com/releases/ksdiff-111.zip'
  homepage 'http://www.kaleidoscopeapp.com/ksdiff2'
  version '2.0.1 (111)'
  sha256 '59f1f090135148a0ab6f04df503a5bb229c3ecd0ea5c96da19a1bf6bb1a4c930'
  install 'Install ksdiff.pkg'
  uninstall :pkgutil => 'com.blackpixel.kaleidoscope.ksdiff.installer.pkg'
  # todo: conflicts_with_cask kaleidoscope
  caveats <<-EOS.undent
    The #{title} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
    EOS
end
