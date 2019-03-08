cask 'cacher' do
  version '2.6.2'
  sha256 '8bab3acdc013329a7bfb40c13dfb4982c87d9bf4b7ff8f9d812ada04d1b87851'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
