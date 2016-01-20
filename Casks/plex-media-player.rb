cask 'plex-media-player' do
  version '1.0.3.132-16fa0ecc'
  sha256 '0c1686f91c4332183e60156e9571a838c4f4b1478c1c7afcd0572e4bb3567c41'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
