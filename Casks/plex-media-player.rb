cask 'plex-media-player' do
  version '2.9.0.824-706dec50'
  sha256 'e2bee5a426bf8f14bec192635e0eddf0394a7adab1ba4e482f9e6f4788def7e9'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '6ddc4cb9e126ef355bf7caa03b92cb2bb8e0acfb3a0e99c65156c03a6d1f36dc'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
