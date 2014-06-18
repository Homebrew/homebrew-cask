class Gawker < Cask
  url 'https://sourceforge.net/projects/gawker/files/latest/download'
  appcast 'http://gawker.sourceforge.net/appcast.xml'
  homepage 'http://gawker.sourceforge.net/Gawker.html'
  version 'latest'
  sha256 :no_check
  link 'Gawker.app'
end
