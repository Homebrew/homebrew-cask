cask 'plex-media-player' do
  version '2.15.0.882-8b488458'
  sha256 '13e4fba02fa0b2927190fda37691b30a95071aa79cfd22ff2ace2c7e8e5b6864'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
