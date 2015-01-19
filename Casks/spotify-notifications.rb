cask :v1 => 'spotify-notifications' do
  version '0.4.8'
  sha256 '953028e9a1aad445005869598050cb8612980821a796563936f557e03b319f50'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/citruspi/Spotify-Notifications/releases/download/#{version}/Spotify.Notifications.-.#{version}.zip"
  name 'Spotify Notifications'
  homepage 'http://spotify-notifications.citruspi.io/'
  license :oss

  app 'Spotify Notifications.app'
end
