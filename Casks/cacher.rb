cask 'cacher' do
  version '2.5.1'
  sha256 'e7db7c9101e4572a94756b477eab8cd066594e2fdfce6adfdd7ccdb45eeb7c0c'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
