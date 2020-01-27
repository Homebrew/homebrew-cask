cask 'geotag-photos-pro' do
  version '1.5.5'
  sha256 '80779b8316547f00a812d410edede1782bd8a23b18d64ad6eaa87c28e73fab71'

  # github.com/tappytaps/geotag-desktop-app was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
