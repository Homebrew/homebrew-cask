cask :v1 => 'plex-media-server' do
  version '0.9.9.14.531-7eef8c6'
  sha256 '7cd91e89f74569409b12f8151d66c731ca8658e6df61aaaac41accf6e6cba337'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  homepage 'https://plex.tv/'
  license :unknown    # todo: improve this machine-generated value

  app 'Plex Media Server.app'
end
