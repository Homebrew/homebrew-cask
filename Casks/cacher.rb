cask 'cacher' do
  version '2.6.8'
  sha256 'a697699bff4ff1ae65d0b6170cd6165a6881b59f29de48e99dfee2d533ee52d4'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
