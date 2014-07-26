class Mactex < Cask
  url 'http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg'
  homepage 'http://www.tug.org/mactex/'
  version 'latest'
  no_checksum
  install 'MacTeX.pkg'
  uninstall :pkgutil => 'org.tug.mactex.texlive2013'
end
