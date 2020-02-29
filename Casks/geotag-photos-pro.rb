cask 'geotag-photos-pro' do
  version '1.5.6'
  sha256 'e82d2a3c2c3656625e4863bcda36c3df223a6f4e038a8313754d0615a8ce8c24'

  # github.com/tappytaps/geotag-desktop-app was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
