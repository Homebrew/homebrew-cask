cask 'plex-media-player' do
  version '1.1.1.293-cc2cc067'
  sha256 '265f67ba311a11db672286797023ceea34eb205a67ca53b17a41fee84f9c5b75'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
