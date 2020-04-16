cask 'plexamp' do
  version '3.0.0'
  sha256 '96781e3924c523a85a9017fdb1a403269d3afcb8576e443f8f29669eb838bbd1'

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  name 'Plexamp'
  homepage 'https://plexamp.com/'

  app 'Plexamp.app'
end
