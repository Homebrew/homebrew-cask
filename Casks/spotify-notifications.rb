cask :v1 => 'spotify-notifications' do
  version '0.4.8'
  sha256 '953028e9a1aad445005869598050cb8612980821a796563936f557e03b319f50'

  url "https://github.com/citruspi/Spotify-Notifications/releases/download/#{version}/Spotify.Notifications.-.#{version}.zip"
  homepage 'http://spotify-notifications.citruspi.io/'
  license :oss

  app 'Spotify Notifications.app'
end
