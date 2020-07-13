cask 'geotag-photos-pro' do
  version '1.6.2'
  sha256 '5506bf8b4fa2f63dc448ebce1d9d33daa4d18cddf58ff39852becbd4e31d02b5'

  # github.com/tappytaps/geotag-desktop-app/ was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
