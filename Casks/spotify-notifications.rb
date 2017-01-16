cask 'spotify-notifications' do
  version '0.6.0'
  sha256 '136f676a4580a561ca08edf13a79a5cea5878f276ff6a38e3f2bb96aeca61031'

  url "https://downloads.spotify-notifications.citruspi.io/#{version}-release.zip"
  appcast 'https://github.com/citruspi/Spotify-Notifications/releases.atom',
          checkpoint: 'cd99bce96073c73d5b6332e1de2d34bed20f21c62ee2d02876fe024bb4ed305a'
  name 'Spotify Notifications'
  homepage 'https://spotify-notifications.citruspi.io/'

  app 'Spotify Notifications.app'
end
