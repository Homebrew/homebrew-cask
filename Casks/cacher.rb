cask 'cacher' do
  version '1.2.1'
  sha256 '1788d7bf0a5bbb2ae43ec3adf81c4b021b69ba5addefe336523f2fc67b054517'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'b9f55e13a163da807aaa2c8b56b375679ea43d86200d99104ba782e83d697371'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
