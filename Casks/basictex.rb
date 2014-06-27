class Basictex < Cask
  version 'latest'
  sha256 :no_check

  url 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg'
  homepage 'http://www.tug.org/mactex/morepackages.html'

  install 'mactex-basic.pkg'
  uninstall :pkgutil => 'org.tug.mactex.basictex2014'
  caveats do
    path_environment_variable '/usr/texbin'
  end
end
