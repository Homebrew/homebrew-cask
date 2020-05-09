cask 'plexamp' do
  version '3.0.3'
  sha256 'd140f6ebfafcf703675d48fa7fa1c76c8e6d3fb341ca2d1d374c7ee66aa17f07'

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast 'https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml'
  name 'Plexamp'
  homepage 'https://plexamp.com/'

  app 'Plexamp.app'
end
