cask :v1 => 'plex-media-player' do
  version '1.0.1.42-56cc6ef9'
  sha256 'b5eb64a5d4668252fe26d3e4dba612b2ebd60197d42d9d8782273969c22be598'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
