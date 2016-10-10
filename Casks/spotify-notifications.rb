cask 'spotify-notifications' do
  version '0.5.2'
  sha256 'c464da41ae084dfc208c94656e33465c86721a54391f2ee1ecba29e269296972'

  # github.com/citruspi/Spotify-Notifications was verified as official when first introduced to the cask
  url "https://github.com/citruspi/Spotify-Notifications/releases/download/#{version}/Spotify.Notifications.-.#{version}.zip"
  appcast 'https://github.com/citruspi/Spotify-Notifications/releases.atom',
          checkpoint: '3ab1004774c7424ba472adbc993a95cd5cbbb424b45283470e11824556c269e7'
  name 'Spotify Notifications'
  homepage 'https://spotify-notifications.citruspi.io/'

  app 'Spotify Notifications.app'
end
