cask 'cacher' do
  version '1.6.13'
  sha256 'cfcdf9d2da6b2bcdb04ea0afc4bf3b49efa5c888dd0282551b3343fe09754de3'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
