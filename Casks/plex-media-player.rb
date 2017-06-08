cask 'plex-media-player' do
  version '1.3.3.666-8a1f4d71'
  sha256 '64d09f17967cb09c2162d8d2b7bf27ecf37768e59db3c967d6345489e8c5cd8e'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'b60b6a2b1615d648f93acff29271179436da417b1ab4ab29a1946c02f87a1b55'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
