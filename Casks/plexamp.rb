cask 'plexamp' do
  version '3.1.0'
  sha256 'e0cac1ddfd2ff1f9f8da59505e34dcdeda18d77301ad9374f8eaf2380c42aba2'

  # plexamp.plex.tv/ was verified as official when first introduced to the cask
  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg"
  appcast 'https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml'
  name 'Plexamp'
  homepage 'https://plexamp.com/'

  app 'Plexamp.app'
end
