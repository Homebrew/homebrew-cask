class Middleclick < Cask
  url 'http://clement.beffa.org/labs/downloads/MiddleClick-maverick.zip'
  homepage 'http://clement.beffa.org/labs/projects/middleclick'
  version '20131027'
  sha1 'bbe6deb4363ebebad6ecd6f92dc8d16fd6adf5e2'
  link 'MiddleClick.app'

  def caveats; <<-EOS.undent
    This cask requires OS X 10.9 Mavericks for the installed application to
    function correctly. 

    Casks for installing this application under older versions of OS X, Mountain 
    Lion and Snow Leopard, can be found in caskroom/homebrew-versions.
    EOS
  end
end
