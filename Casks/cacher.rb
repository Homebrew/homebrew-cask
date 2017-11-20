cask 'cacher' do
  version '1.1.20'
  sha256 '6372c5032b04adfc56382f5b4ff3ff92590acdd7c10d67db2987c0c9c9057915'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
