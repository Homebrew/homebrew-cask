cask 'plex-media-player' do
  version '2.18.0.893-48795f25'
  sha256 'f91407ce47501a01d0d70cc8491ef09f56b2cd3996d12a6a59b50d920dfa9750'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
