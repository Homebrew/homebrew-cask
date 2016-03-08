cask 'plex-media-server' do
  version '0.9.15.6.1714-7be11e1'
  sha256 '3feadf9b3f5a8447bf8aa5701f033b2c23d5f1a70ac7122d78f6cf05909e442f'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end
