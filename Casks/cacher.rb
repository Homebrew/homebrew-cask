cask 'cacher' do
  version '1.4.5'
  sha256 '14d9708990da57505686ea6896ae380de06bf5bca6dfb886293d08bc4920a25c'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '7b775be005aca960a0120c84870f422022065bebd4f05e2900957e46f0bdb9ba'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
