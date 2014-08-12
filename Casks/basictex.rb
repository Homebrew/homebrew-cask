class Basictex < Cask
  version '20140525'
  sha256 '574132bcde10221c8e3be1f6ac27eee84393092dae96928bb70fc6cb6e27f9cf'

  url 'http://mirror.ctan.org/systems/mac/mactex/basictex20140525.pkg'
  homepage 'http://www.tug.org/mactex/morepackages.html'

  install 'mactex-basic.pkg'
  uninstall :pkgutil => 'org.tug.mactex.basictex2014'
  caveats do
    path_environment_variable '/usr/texbin'
  end
end
