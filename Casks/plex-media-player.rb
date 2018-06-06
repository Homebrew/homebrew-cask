cask 'plex-media-player' do
  version '2.11.1.870-4af5a622'
  sha256 '6486595121656d25d40d80140c0d97502d2ed21a417a7e35098ce601689b4802'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'ccc58c3b369077b1ecea5b280e981e3e73e06867788be7596e5ea3fc92cdb835'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
