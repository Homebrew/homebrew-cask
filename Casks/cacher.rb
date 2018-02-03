cask 'cacher' do
  version '1.2.6'
  sha256 'ec6a534f8766d664e6ce1abba19090e93d4c01e04e08543acdca2cfe90cb3459'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '05daeb4cdd12464865ae467f904d4fcb1ed8d6c2524b5013f2453d583fa9b9ad'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
