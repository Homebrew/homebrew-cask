cask 'plexamp' do
  version '1.1.0'
  sha256 'f48bf6ee4a7353ed457501ce0d3cdfb4e736c1ea9b223011b6ba8d32f5f6daab'

  url "https://plexamp.plex.tv/plexamp.plex.tv/Plexamp-#{version}.dmg"
  appcast 'https://www.plex.tv/plex-labs/#modal-plexamp-downloads'
  name 'Plexamp'
  homepage 'https://www.plex.tv/plex-labs/#plexamp'

  app 'Plexamp.app'
end
