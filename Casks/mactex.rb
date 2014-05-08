class Mactex < Cask
  url 'http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg'
  homepage 'http://www.tug.org/mactex/'
  version 'latest'
  sha256 :no_check
  install 'MacTeX.pkg'
  uninstall :pkgutil => 'org.tug.mactex.texlive2013',
            :files   => '/etc/paths.d/TeX'
  caveats do
    zsh_path_helper '/usr/texbin'
  end
end
