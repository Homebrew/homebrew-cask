cask :v1 => 'plex-media-player' do
  version '1.0.2.70-15a01542'
  sha256 'ff3514acc5ada916d3f9c295f9601eaa255413191b6a9066d9452e25b016cfab'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
