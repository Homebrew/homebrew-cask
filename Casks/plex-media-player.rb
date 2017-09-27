cask 'plex-media-player' do
  version '1.3.8.712-6aea917a'
  sha256 '35ce29cdbd94624d6bcd6563806dabdde1f058961e237b9d9bb83ba104a5dac1'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '09c5d9f137c29d7d8fa8f6dd83b586ac7de8212869a3afac2432fd9dbd7d6f85'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
