cask 'plex-media-server' do
  version '0.9.16.0.1754-23623fb'
  sha256 '26c6a0861e582ad7bc57abe659a2e35a0f354deaadc87eb2fa9f1d28cb83ce2d'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
