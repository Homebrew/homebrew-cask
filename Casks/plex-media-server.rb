cask 'plex-media-server' do
  version '0.9.15.3.1674-f46e7e6'
  sha256 'b11c2a083291dcfc3198542fa6738b862462bce0111b390b0589b1401854a033'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
