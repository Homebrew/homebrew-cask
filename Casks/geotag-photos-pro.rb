cask 'geotag-photos-pro' do
  version '1.1.1'
  sha256 '999d6028b1fa5e9fbae9b910b728d7649943051ce63fc9fd3f8aba71362ad9d9'

  # github.com/tappytaps was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/geotag-#{version}-mac.zip"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
