cask 'plexamp' do
  version '3.0.1'
  sha256 '56ac23d42d7688671399e18556db19f2cba2bed05912a18a7c8b04cea8af918f'

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast 'https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml'
  name 'Plexamp'
  homepage 'https://plexamp.com/'

  app 'Plexamp.app'
end
