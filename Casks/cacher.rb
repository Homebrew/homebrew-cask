cask 'cacher' do
  version '1.5.15'
  sha256 'fbdf09e19bf03a36da432a72f29df221de602d5004095b429fdd2e8cf1e241ee'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
