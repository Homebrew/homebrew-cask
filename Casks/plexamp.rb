cask 'plexamp' do
  version '1.0.1'
  sha256 'cc0a31e19caaa301608ce9b0b895bb8f44ccdb9018ad92741d5ed9398fc83855'

  url "https://plexamp.plex.tv/plexamp.plex.tv/Plexamp-#{version}.dmg"
  name 'Plexamp'
  homepage 'https://www.plex.tv/plex-labs/#plexamp'

  app 'Plexamp.app'
end
