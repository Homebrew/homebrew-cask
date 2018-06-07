cask 'cacher' do
  version '1.5.4'
  sha256 'a3c5998baedfee1d6bc55ba6aff12f3c8bed718f6553162846ecea58588727c1'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '14fa515781508d4e6bf50b264eb9fc3b30dfe9f7b3102169743b012e0e377c69'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
