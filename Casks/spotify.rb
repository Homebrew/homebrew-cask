class Spotify < Cask
  version 'latest'
  sha256 :no_check

  url 'http://download.spotify.com/Spotify.dmg'
  homepage 'https://www.spotify.com'

  link 'Spotify.app'
end
