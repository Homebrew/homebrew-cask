cask 'plexamp' do
  version '1.0.2'
  sha256 '93b2940edc56f406a0fe6665a9e2065e142fe3d908d440e8163d7fd2613c2bc6'

  url "https://plexamp.plex.tv/plexamp.plex.tv/Plexamp-#{version}.dmg"
  name 'Plexamp'
  homepage 'https://www.plex.tv/plex-labs/#plexamp'

  app 'Plexamp.app'
end
