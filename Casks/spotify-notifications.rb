cask :v1 => 'spotify-notifications' do
  version '0.5.1'
  sha256 'd9adb821d82be7f1266d8042d2b677a4c91fe7686631c02e2d0307f9f536a722'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/citruspi/Spotify-Notifications/releases/download/#{version}/Spotify.Notifications.-.#{version}.zip"
  name 'Spotify Notifications'
  homepage 'http://spotify-notifications.citruspi.io/'
  license :public_domain

  app 'Spotify Notifications.app'
end
