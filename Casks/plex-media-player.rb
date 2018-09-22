cask 'plex-media-player' do
  version '2.19.1.904-f679df4f'
  sha256 '0f4a26e0fb6bec52be60dda0b730a35586dbe699cbe7e9507cfc7667878a2c25'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
