class Loadmytracks < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.cluetrust.com/Downloads/LoadMyTracks.dmg'
  appcast 'http://www.cluetrust.com/AppCasts/LoadMyTracks.xml'
  homepage 'http://www.cluetrust.com/loadmytracks.html'

  link 'LoadMyTracks.app'
end
