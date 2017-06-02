cask 'plex-media-player' do
  version '1.3.2.657-21cb31b8'
  sha256 'aa0e1b6c628d822150d238be7bf5f096256c8d6770f2ce73b58b4c5e07015771'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '9a80ae64e13bb1265a7f09c1bdb0b3e0c0ba48e167c823e5581f94ec4c0ed89d'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
