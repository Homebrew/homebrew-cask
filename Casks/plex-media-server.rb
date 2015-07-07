cask :v1 => 'plex-media-server' do
  version '0.9.12.4.1192-9a47d21'
  sha256 '984bfae6ec9aea2cbe24229c968225389c861124f8d3d09ab5bd5c6c43d71829'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Plex Media Server.app'
end
