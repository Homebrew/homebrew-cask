cask 'geotag-photos-pro' do
  version '1.1.0'
  sha256 '079761e318d21bae71162380a3aebd80de26575defd4c87f991429c820bd8101'

  # github.com/tappytaps was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/geotag-#{version}-mac.zip"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
