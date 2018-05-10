cask 'cacher' do
  version '1.5.0'
  sha256 '534fea7c14b7d5cc78cb14c4f4d07809de4fedc180a40d792f3113093ef2e075'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '944ada3a6043b772d26e9b44518b6c301f903494a7edd316e8632b8d3c3e09ed'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
