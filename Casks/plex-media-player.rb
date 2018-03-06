cask 'plex-media-player' do
  version '2.5.0.792-1bc7f225'
  sha256 'b24745e30c087a5288a09c4c617375a2003e6a777d5da67016037a44154df17a'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '8089600139201393b6890f911bd444c7efcf57e471dade581f33440a0ce6c049'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
