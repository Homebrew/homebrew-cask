cask 'plexamp' do
  version '3.1.1'
  sha256 'ed96861c4c5edf6573dc5ae3d65dbbdeacf8c001e1b0f1e5988a51d689af70a7'

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast 'https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml'
  name 'Plexamp'
  homepage 'https://plexamp.com/'

  app 'Plexamp.app'
end
