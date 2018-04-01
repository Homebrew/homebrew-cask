cask 'plex-media-player' do
  version '2.6.0.803-edcf527b'
  sha256 'd461793234919b6a76bb13fc2ddbf15e3f7149673e48e5294119d26c870ee71a'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '6e06f39438721b5b504e66402382d2678033c222b4549e9c6824edb273a2ea80'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
