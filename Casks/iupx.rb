class Iupx < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://sourceforge.net/projects/iupx/files/latest/download'
  appcast 'http://iupx.sourceforge.net/updates/appcast.xml'
  homepage 'http://iupx.sourceforge.net'

  link 'iUPX.app'
end
