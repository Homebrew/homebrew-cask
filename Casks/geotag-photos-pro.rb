cask 'geotag-photos-pro' do
  version '1.5.4'
  sha256 '0c84ee5c1027f9793fd372b517d440f20a534b09ebfdff3452bbb65542f340c0'

  # github.com/tappytaps/geotag-desktop-app was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
