cask 'plex-media-player' do
  version '1.3.0.642-70f80570'
  sha256 'f1b76595a80dab120d25eb1df337e9781cc6745017f8766c2418c0404d9b7694'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'e04b93c92723fdca869a9625be8594a571a41b334bbfbfc38a2d50014ec9045e'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
