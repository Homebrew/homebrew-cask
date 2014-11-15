cask :v1 => 'ksdiff' do
  version '2.1.0 (122)'
  sha256 '9570f53dcbeb558c53f4808ba58e8c9f394a3026e8bdd122277200a1cdf11e52'

  url 'http://cdn.kaleidoscopeapp.com/releases/ksdiff-122.zip'
  homepage 'http://www.kaleidoscopeapp.com/ksdiff2'
  license :unknown

  pkg 'Install ksdiff.pkg'
  uninstall :pkgutil => 'com.blackpixel.kaleidoscope.ksdiff.installer.pkg'
  # todo: conflicts_with_cask kaleidoscope
  caveats <<-EOS.undent
    The #{title} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
