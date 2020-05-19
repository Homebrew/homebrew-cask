cask 'cacher' do
  version '2.27.3'
  sha256 '992a8851b48ea1a6edc5afb79dfac5de8257c3ace6dc5c784461eb95fbcedd92'

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
