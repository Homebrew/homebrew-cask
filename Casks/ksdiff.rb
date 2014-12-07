cask :v1 => 'ksdiff' do
  version '2.1.0 (122)'
  sha256 '9570f53dcbeb558c53f4808ba58e8c9f394a3026e8bdd122277200a1cdf11e52'

  url 'http://cdn.kaleidoscopeapp.com/releases/ksdiff-122.zip'
  homepage 'http://www.kaleidoscopeapp.com/ksdiff2'
  license :unknown

  pkg 'Install ksdiff.pkg'

  uninstall :pkgutil => 'com.blackpixel.kaleidoscope.ksdiff.installer.pkg'
  # todo
  # conflicts_with :cask => 'kaleidoscope'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    The #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
