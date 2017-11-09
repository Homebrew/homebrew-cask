cask 'cacher' do
  version '1.1.19'
  sha256 '3589f3a66aaecb2d444b6532ba31f4553e661a5b219534cc87e7d47555c16469'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
