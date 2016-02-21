cask 'plex-media-server' do
  version '0.9.15.5.1712-ba5070a'
  sha256 '53c6679bb649126a6149da9232f934366eb22fe8976313bd06cde7e84802b896'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
