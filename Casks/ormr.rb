class Ormr < Cask
  version 'latest'
  sha256 :no_check

  url 'http://getormr.com/dn/Ormr.pkg'
  homepage 'http://getormr.com/home/'

  pkg 'Ormr.pkg'
  uninstall :pkgutil => 'com.sadcatsoft.ormr.Ormr.pkg'
end
