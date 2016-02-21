cask 'plex-media-server' do
  version '0.9.15.5.1712-ba5070a'
  sha256 '46297f9cc5911b7622c3e27a448f426400546df485f2f6d57d4fd10d6d6f574c'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
