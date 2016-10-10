cask 'plex-media-player' do
  version '1.1.4.393-12c41f9f'
  sha256 'fb331cc0e1aef551ad9fbb2970df4ae38cc06a30eb9aab46dbd6b4c99fdb4b49'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'

  app 'Plex Media Player.app'
end
