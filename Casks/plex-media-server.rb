cask 'plex-media-server' do
  version '0.9.14.6.1620-e0b7243'
  sha256 '992c7979ac784c59e41e76baee89e1fcfbccebc05d83fed78966492e0148ef36'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
