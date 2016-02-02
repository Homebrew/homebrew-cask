cask 'plex-media-player' do
  version '1.0.4.169-da1dda84'
  sha256 'e42b2cfeca5bedc89d3e68827f583c69ab47a06d907adecbcc290790a44a170b'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
