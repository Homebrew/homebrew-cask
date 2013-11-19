class Basictex < Cask
  url 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg'
  homepage 'http://www.tug.org/mactex/morepackages.html'
  version 'latest'
  no_checksum
  install 'mactex-basic.pkg'
  uninstall :pkgutil => 'org.tug.mactex.basictex2013'
end
