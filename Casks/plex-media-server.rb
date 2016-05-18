cask 'plex-media-server' do
  version '0.9.16.6.1993-5089475'
  sha256 'b788d6879920e26574956ef8d177fd4663a8df89c71250c07d1a3deece110af2'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
