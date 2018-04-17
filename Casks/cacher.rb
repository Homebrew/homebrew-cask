cask 'cacher' do
  version '1.3.14'
  sha256 'f4301e4be306956072940d7479ea8efec556203f96c59358153c376a0acc6e2f'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '3b572f102aaf1803b2d0278a7297d879be86d60970d4032f7cdc3874786b9548'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
