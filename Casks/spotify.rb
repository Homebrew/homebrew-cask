class Spotify < Cask
  url 'http://download.spotify.com/Spotify.dmg'
  homepage 'https://www.spotify.com'
  version 'stable'
  no_checksum

  link :app, 'Spotify.app'
end
