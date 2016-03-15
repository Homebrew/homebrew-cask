cask 'plex-media-server' do
  version '0.9.16.1.1794-af21b7e'
  sha256 'f2a69217080ccc4ce5d12824476d7db9fb9ed3a44946187cc4827d4180b9ceb2'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
