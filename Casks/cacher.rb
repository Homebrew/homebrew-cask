cask 'cacher' do
  version '2.13.0'
  sha256 '3129f3aa835744dbf0bd9e7de42721ee88e6b1a26ccd5f8b9d10e29007e797a5'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
