cask 'spotify-notifications' do
  version '0.6.0'
  sha256 '136f676a4580a561ca08edf13a79a5cea5878f276ff6a38e3f2bb96aeca61031'

  url "https://downloads.spotify-notifications.citruspi.io/#{version}-release.zip"
  appcast 'https://github.com/citruspi/Spotify-Notifications/releases.atom',
          checkpoint: 'bb0f60292149bba6223d62f7d5e483a4ab8b1ea0a75671be1cd88b2f2a9d0020'
  name 'Spotify Notifications'
  homepage 'https://spotify-notifications.citruspi.io/'

  app 'Spotify Notifications.app'
end
