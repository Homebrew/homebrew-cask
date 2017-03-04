cask 'plex-media-player' do
  version '1.2.2.555-d1355001'
  sha256 '215e4dafb86e105686b57bf912f0767c0bedb0cbe7556eb74b280aaf5ad0f143'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '6570cc66721a10cacf8ee1ffeaa06e23bb44d5a7872680cf4440e8dd01d72216'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
