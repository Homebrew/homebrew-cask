cask 'plexamp' do
  version '3.0.0'
  sha256 '96781e3924c523a85a9017fdb1a403269d3afcb8576e443f8f29669eb838bbd1'

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast 'https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml'
  name 'Plexamp'
  homepage 'https://plexamp.com/'

  app 'Plexamp.app'
end
