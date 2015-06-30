cask :v1 => 'ksdiff' do
  version '2.1.0 (122)'
  sha256 '9570f53dcbeb558c53f4808ba58e8c9f394a3026e8bdd122277200a1cdf11e52'

  url "http://cdn.kaleidoscopeapp.com/releases/ksdiff-#{version.sub(%r{.*?\((\d+)\)},'\1')}.zip"
  name 'ksdiff'
  homepage 'http://www.kaleidoscopeapp.com/ksdiff2'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install ksdiff.pkg'

  uninstall :pkgutil => 'com.blackpixel.kaleidoscope.ksdiff.installer.pkg'
  # todo
  # conflicts_with :cask => 'kaleidoscope'

  caveats <<-EOS.undent
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
