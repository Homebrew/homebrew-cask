cask 'cacher' do
  version '1.3.8'
  sha256 '8721dfb7e66428d8f238234b804ce89c3ec5af4484b8c77dab323149a83dd8df'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'a10ffbda4d593145046bdebb4278c80ae820d20c6b77c76ed2c48ba80ed7d95b'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
