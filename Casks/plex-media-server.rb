cask :v1 => 'plex-media-server' do
  version '0.9.12.11.1406-8403350'
  sha256 '232b38dd88e4858a1cfe4820660abf0a6325ae59983ee05b693fcb2df1499bd1'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Plex Media Server.app'
end
