cask 'plexamp' do
  version '3.0.2'
  sha256 'd08757e341a215481e5395120a913ddf127f3d6945f68e739509acb0361b5d5c'

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast 'https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml'
  name 'Plexamp'
  homepage 'https://plexamp.com/'

  app 'Plexamp.app'
end
