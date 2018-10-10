cask 'geotag-photos-pro' do
  version '1.0.8'
  sha256 '3357a079aa065ac214b23cefb1b81b89a42b660573fd63afaf2f96013ddf84d6'

  # github.com/tappytaps was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/geotag-#{version}-mac.zip"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
