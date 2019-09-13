cask 'geotag-photos-pro' do
  version '1.3.0'
  sha256 '4e26e5647d5ac55047b47072963d7d1368ccbf9548e0d21180741a459114f30d'

  # github.com/tappytaps was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}-mac.zip"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
