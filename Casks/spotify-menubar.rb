class SpotifyMenubar < Cask
  version 'latest'
  sha256 :no_check

  url 'http://lifeupnorth.co.uk/files/Spotify_Menubar.zip'
  appcast 'http://lifeupnorth.co.uk/lun/sparkle/sm.xml'
  homepage 'http://lifeupnorth.co.uk/Spotify-Menubar/'

  link 'Spotify Menubar.app'
end
