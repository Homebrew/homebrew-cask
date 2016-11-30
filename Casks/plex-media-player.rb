cask 'plex-media-player' do
  version '1.2.0.481-b45bbf24'
  sha256 'bc1e033cbe2255d82d340647b8ec4408fa816693ab77e359772f202bc01c3866'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  app 'Plex Media Player.app'
end
