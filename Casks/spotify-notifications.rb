cask :v1 => 'spotify-notifications' do
  version '0.5.2'
  sha256 'c464da41ae084dfc208c94656e33465c86721a54391f2ee1ecba29e269296972'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/citruspi/Spotify-Notifications/releases/download/#{version}/Spotify.Notifications.-.#{version}.zip"
  appcast 'https://github.com/citruspi/Spotify-Notifications/releases.atom'
  name 'Spotify Notifications'
  homepage 'http://spotify-notifications.citruspi.io/'
  license :public_domain

  app 'Spotify Notifications.app'
end
