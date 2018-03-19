cask 'cacher' do
  version '1.3.6'
  sha256 '64647f9ffd9801b67da0547d0d0f9417526ff52d17cf2038d21e0ddec69e5fb7'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'eccc9fa5629e75d86997da6a9b8e177232bf3195846f119e2e68c3ce0e22844c'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
