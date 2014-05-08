class Idris < Cask
  url 'http://www.idris-lang.org/pkgs/idris-current.pkg'
  homepage 'http://www.idris-lang.org'
  version 'latest'
  sha256 :no_check
  install 'idris-current.pkg'
  uninstall :pkgutil => 'org.idris-lang'
end
