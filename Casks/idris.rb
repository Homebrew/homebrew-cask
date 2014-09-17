class Idris < Cask
  version :latest
  sha256 :no_check

  url 'http://www.idris-lang.org/pkgs/idris-current.pkg'
  homepage 'http://www.idris-lang.org'

  pkg 'idris-current.pkg'
  uninstall :pkgutil => 'org.idris-lang'
end
