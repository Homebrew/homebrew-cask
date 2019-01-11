cask 'cacher' do
  version '2.3.6'
  sha256 '7e23ee24cedd0d3d03b6afd35990a77af76bd0dcc5d4ed28d95ddfa1e1de449f'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
