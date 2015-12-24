cask 'plex-media-server' do
  version '0.9.12.19'
  sha256 ''

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Plex Media Server.app'
end
