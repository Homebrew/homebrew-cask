class Moneyplex < Cask
<<<<<<< HEAD
  version 'latest'
  sha256 :no_check
=======
  version '12.0'
  sha256 'e3eb8261bf5ba93e7189429007112a00bc8791baff2641013f48b8fc97526d65'
>>>>>>> fab76cc... Add moneyplex 12.0

  url 'http://www.matrica.com/download/mac/moneyplex.dmg'
  homepage 'http://www.matrica.de/'

<<<<<<< HEAD
  install 'moneyplex.pkg', :allow_untrusted => true  
=======
  install 'moneyplex.pkg', :allow_untrusted => true
  
>>>>>>> fab76cc... Add moneyplex 12.0
  uninstall :pkgutil => 'de.matrica.moneyplex.Moneyplex.pkg'
end
