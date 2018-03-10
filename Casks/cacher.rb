cask 'cacher' do
  version '1.3.4'
  sha256 '7b3f8ef28ef0dfd9370730edd66b4b7bff45e83fae11e91796576632b3f57f55'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '118fcb16dfb6beda8e67ba5a44aece164cb9d1e10de75f4b4359a9b8f8a44386'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
