cask :v1 => 'plex-media-server' do
  version '0.9.12.18.1520-6833552'
  sha256 '912dd5a8a68f215329fcbdb2445551a5f238dd92ba80ca846455832d207d9376'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Plex Media Server.app'
end
