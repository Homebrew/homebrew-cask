cask 'plexamp' do
  version '1.0.4'
  sha256 'b26794536606b6fc00c4193056e7a57da2fdeb758f58be1778338537a54fbfc3'

  url "https://plexamp.plex.tv/plexamp.plex.tv/Plexamp-#{version}.dmg"
  name 'Plexamp'
  homepage 'https://www.plex.tv/plex-labs/#plexamp'

  app 'Plexamp.app'
end
