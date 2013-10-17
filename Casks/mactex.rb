class Mactex < Cask
  url 'http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg'
  homepage 'http://www.tug.org/mactex/'
  version 'latest'
  sha1 'b36c1b7f16e4df3fb51bc8706a55ac62bd70b7f1'
  install 'MacTeX.pkg'
  uninstall :pkgutil => 'org.tug.mactex.texlive2013'
end
