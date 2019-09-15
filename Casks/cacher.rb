cask 'cacher' do
  version '2.18.1'
  sha256 '669bd5eeae820a6c5d7aa8791cd9f965bbfb5d8083abf132003dd1aa7cf5febc'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
