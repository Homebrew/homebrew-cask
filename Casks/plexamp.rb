cask 'plexamp' do
  version '1.0.5'
  sha256 'dbec479199d6bf65e42dc2d645ce4441216f21c9040d8cb5a910413cf48d780e'

  url "https://plexamp.plex.tv/plexamp.plex.tv/Plexamp-#{version}.dmg"
  name 'Plexamp'
  homepage 'https://www.plex.tv/plex-labs/#plexamp'

  app 'Plexamp.app'
end
