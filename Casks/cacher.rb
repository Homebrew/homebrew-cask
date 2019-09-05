cask 'cacher' do
  version '2.17.3'
  sha256 'fbcd183c74472dca6e036386b61db9a8395f8233580bd2aa1da1a89295a62bdb'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
