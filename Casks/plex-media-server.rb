cask :v1 => 'plex-media-server' do
  version '0.9.11.4.739-a4e710f'
  sha256 '69066c232cfbf4b8cd92881e954e8486042c0838bfd69c27b600d89d023abf96'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  homepage 'https://plex.tv/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Plex Media Server.app'
end
