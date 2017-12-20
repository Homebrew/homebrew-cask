cask 'plexamp' do
  version '1.0.0'
  sha256 'c9b00e8614e0686d2e4741259a95a0096b03041b1d281fab7bd3e7ef709dea9c'

  url "https://plexamp.plex.tv/plexamp.plex.tv/Plexamp-#{version}.dmg"
  name 'Plexamp'
  homepage 'https://www.plex.tv/plex-labs/#plexamp'

  app 'Plexamp.app'
end
