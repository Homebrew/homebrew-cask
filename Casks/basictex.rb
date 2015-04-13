cask :v1 => 'basictex' do
  version :latest
  sha256 :no_check

  # ctan.org is the official download host per the vendor homepage
  url 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg'
  name 'BasicTeX'
  homepage 'http://www.tug.org/mactex/morepackages.html'
  license :oss

  pkg 'mactex-basic.pkg'

  uninstall :pkgutil => 'org.tug.mactex.basictex2014'
  caveats do
    path_environment_variable '/usr/texbin'
  end
end
