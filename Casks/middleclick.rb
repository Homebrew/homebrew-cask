class Middleclick < Cask
  url 'http://clement.beffa.org/labs/downloads/MiddleClick-maverick.zip'
  homepage 'http://clement.beffa.org/labs/projects/middleclick'
  version 'latest'
  no_checksum
  link 'MiddleClick.app'
  caveats <<-EOS.undent
    This cask requires OS X 10.9 Mavericks for the installed application to
    function correctly.

    Casks for installing this application under older versions of OS X, Mountain
    Lion and Snow Leopard can be found in caskroom/homebrew-versions.
    EOS
end
