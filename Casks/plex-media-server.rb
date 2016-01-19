cask 'plex-media-server' do
  version '0.9.15.1.1639-26325ea'
  sha256 '7a25cef0b97f260f429beaf99a5e7e9d2e58deb8a88b14f406ebe1b16b512233'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
