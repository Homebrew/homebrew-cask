cask 'plex-media-player' do
  version '2.2.1.758-5dad2d62'
  sha256 '97f0a6b9afa6b7be62d00de2ffc35d13290426e44383f85d6e40da5baa94c785'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'd2105dd7c7c6a20a4f376d9251a23158382d310f1778440f6547170f05a5bb6d'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
