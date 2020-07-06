cask 'geotag-photos-pro' do
  version '1.6.1'
  sha256 'fa48eb533d5e8210e11681cc17ad6482150d0c7bf711a294dd8cfbd4c51a11ea'

  # github.com/tappytaps/geotag-desktop-app/ was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
