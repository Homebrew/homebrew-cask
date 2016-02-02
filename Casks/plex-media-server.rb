cask 'plex-media-server' do
  version '0.9.15.2.1663-7efd046'
  sha256 'bceb2535cbeed73269c47d16b4b9738c7f67c77e7608a527be7e0fcdacf0e2e6'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
