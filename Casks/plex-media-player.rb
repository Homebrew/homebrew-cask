cask 'plex-media-player' do
  version '1.3.7.701-bbc09c96'
  sha256 '2af4356545ccb18f9689084019f37d00d6ddfc903a383e14bee0115ce4d8cbb8'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'ed80780ae92a6c909d1b8cdf6a977f40a77e9661e74d9eb2f3e08d324d301e04'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
