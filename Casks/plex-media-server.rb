cask :v1 => 'plex-media-server' do
  version '0.9.12.19.1537-f38ac80'
  sha256 '047b08823d15013cc8daecbe8ba1da33fd21965aef7ae5be653fe3bb36116b69'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Plex Media Server.app'
end
