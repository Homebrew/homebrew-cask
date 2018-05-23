cask 'plex-media-player' do
  version '2.10.0.849-e02dbeca'
  sha256 'a253f856a460daed1572ec989bc01598b4db71ffb1ac40113a11e618225c4c61'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '2db4b118052d62d5623f053fe9d4330fce99a4972099ad2e9833337238abec45'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
