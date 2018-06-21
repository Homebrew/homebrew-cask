cask 'cacher' do
  version '1.5.6'
  sha256 '20936159be2e4716c5fd2ad40f582ca4bcdbcb002cfc72d6766787e2fe20d9dd'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
