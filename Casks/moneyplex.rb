cask :v1 => 'moneyplex' do
  version :latest
  sha256 :no_check

  url 'http://www.matrica.com/download/mac/moneyplex.dmg'
  homepage 'http://www.matrica.de/'
  license :unknown

  pkg 'moneyplex.pkg', :allow_untrusted => true
  uninstall :pkgutil => 'de.matrica.moneyplex.Moneyplex.pkg'
end
