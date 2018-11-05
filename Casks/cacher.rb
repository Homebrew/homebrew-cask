cask 'cacher' do
  version '2.0.4'
  sha256 '7c1fe1b73f95f5af805ff78d3d678ddd28be48014c9c4026e1432ba619d1cacb'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
