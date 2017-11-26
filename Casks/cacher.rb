cask 'cacher' do
  version '1.1.21'
  sha256 '3a9baa7814d69f57c8a5c6008b2e2a7a6e8824af35b7d4dfe7292752244eecdc'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'cbfe494ade2d227dc864ee3d15339ec779fdd34fa497123871eaee3a3bdff91f'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
