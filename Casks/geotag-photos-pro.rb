cask 'geotag-photos-pro' do
  version '1.2.1'
  sha256 '6871192cafab3cb49db73f49456bea9a7cc7c4142fa8eaf47d7df703cafc7ffd'

  # github.com/tappytaps was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/geotag-#{version}-mac.zip"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
