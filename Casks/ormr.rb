class Ormr < Cask
  url 'http://getormr.com/dn/Ormr.pkg'
  homepage 'http://getormr.com/home/'
  version 'latest'
  sha256 :no_check
  install 'Ormr.pkg'
  uninstall :pkgutil => 'com.sadcatsoft.ormr.Ormr.pkg'
end
