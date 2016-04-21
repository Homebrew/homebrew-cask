cask 'plex-media-server' do
  version '0.9.16.5.1966-81a3bf0'
  sha256 '56dcf7dbd06774198a8892f5cacb8fe21b7ac189e874eaec5755407f20cbf1a5'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
