cask 'plex-media-player' do
  version '1.0.6.229-1ce41570'
  sha256 '7bb4a6a25da551753f859487c9823687cd47f73152e53ece44c25e135afe2499'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
