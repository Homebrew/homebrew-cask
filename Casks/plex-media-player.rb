cask 'plex-media-player' do
  version '1.2.5.606-0b42eb77'
  sha256 'bc5836cd26cd7fdd2fea7c82af2f7731b97bac39e8556c238e86bec700eff2dc'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '6f93089dbe983bfd7ddc7ff42d03ad49c14e88e7fc1882b5773efbd9a0be1a36'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
