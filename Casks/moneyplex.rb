class Moneyplex < Cask
  version '12.0'
  sha256 'e3eb8261bf5ba93e7189429007112a00bc8791baff2641013f48b8fc97526d65'

  url 'http://www.matrica.com/download/mac/moneyplex.dmg'
  homepage 'http://www.matrica.de/'

  install 'moneyplex.pkg', :allow_untrusted => true
  
  uninstall :pkgutil => 'de.matrica.moneyplex.Moneyplex.pkg'
end
