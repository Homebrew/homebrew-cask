cask 'plex-media-server' do
  version '0.9.16.3.1840-cece46d'
  sha256 'fd196e32ce5d4280dcb146eea0fb1c41c7ada59b4d142714a0daea15e1228f1a'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
