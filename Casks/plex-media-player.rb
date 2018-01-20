cask 'plex-media-player' do
  version '1.3.12.755-fed6185a'
  sha256 'bdf620de2ea5cb5aa7fbf9e779955401f6bc0039ab637adb9c31f7b358dd39cd'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'd2105dd7c7c6a20a4f376d9251a23158382d310f1778440f6547170f05a5bb6d'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
