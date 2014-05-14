class Sidplay < Cask
  url 'http://www.twinbirds.com/sidplay/SIDPLAY4.zip'
  appcast 'http://www.sidmusic.org/sidplay/mac/sidplay_appcast.xml'
  homepage 'http://www.sidmusic.org/sidplay/mac/'
  version 'latest'
  sha256 :no_check
  link 'SIDPLAY.app'
end
