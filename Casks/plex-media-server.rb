cask 'plex-media-server' do
  version '0.9.16.2.1827-df572f6'
  sha256 '36ed086f694ce22b93acda3f4e69fdfe51deeb5caaceb001f48d56e55c313563'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
