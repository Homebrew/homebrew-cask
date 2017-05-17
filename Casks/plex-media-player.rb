cask 'plex-media-player' do
  version '1.3.1.649-44510e82'
  sha256 '8f49676ba56a2394d323f0935787d29332092449663e36a18dbd4b47d67a6fc9'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '378ea6a0e8d352e06d846cd2351667f1ef318f9669eff5fa26b25cb4b5d9099f'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
