cask 'cacher' do
  version '1.3.9'
  sha256 'f9419d9419ada2451ad46e09ed598b48059e79420f23dbcf4435a6f9459f7a15'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '3b8b9779cea270fd6115358b768a4d574f1a0ae96e84206ed6fe86c60ffdc88a'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
