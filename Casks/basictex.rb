class Basictex < Cask
  url 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg'
  homepage 'http://www.tug.org/mactex/morepackages.html'
  version 'latest'
  sha256 :no_check
  install 'mactex-basic.pkg'
  uninstall :pkgutil => 'org.tug.mactex.basictex2013'
  caveats do
    path_environment_variable '/usr/texbin'
  end
end
