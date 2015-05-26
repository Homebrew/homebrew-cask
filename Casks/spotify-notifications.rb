cask :v1 => 'spotify-notifications' do
  version '0.5.1'
  sha256 '4402ae1d466f0129051ed9b052bc228183c1ed6c6dbf23716eff5eae1d9ff310'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/citruspi/Spotify-Notifications/releases/download/#{version}/Spotify.Notifications.-.#{version}.zip"
  appcast 'https://github.com/citruspi/Spotify-Notifications/releases.atom'
  name 'Spotify Notifications'
  homepage 'http://spotify-notifications.citruspi.io/'
  license :public_domain

  app 'Spotify Notifications.app'
end
