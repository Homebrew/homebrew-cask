cask :v1 => 'plex-media-server' do
  version '0.9.12.13.1464-4ccd2ca'
  sha256 'ee9ac6ffda9d224e768ed1558270deb07d8b568f0ddb7c3bf389f828f47b22b7'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Plex Media Server.app'
end
