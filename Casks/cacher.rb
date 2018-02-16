cask 'cacher' do
  version '1.3.2'
  sha256 'a18a6ef713460439f7c61f422f5b52669bee6902d667ad8eced231f45f1411b2'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '26fe985798db0753ea600ffa90d4c5b32e40c4e73d1ed0bf8a9b7437fc5208ad'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
