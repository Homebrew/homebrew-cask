class Basictex < Cask
  url 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg'
  homepage 'http://www.tug.org/mactex/morepackages.html'
  version 'latest'
  no_checksum
  install 'mactex-basic.pkg'
  uninstall :pkgutil => 'org.tug.mactex.basictex2013'

  def caveats; <<-EOS.undent
    You may need to add the MacTeX bin directory to your PATH.

    export PATH=/usr/texbin:$PATH

    EOS
  end
end
