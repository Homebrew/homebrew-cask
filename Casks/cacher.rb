cask 'cacher' do
  version '1.5.11'
  sha256 '8c6a063cb96583e57b3ff6fae62cfd2c1caea32b8c03b0290a7a71d8d45a4697'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
