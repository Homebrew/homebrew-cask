cask 'cacher' do
  version '2.21.3'
  sha256 '609d88fb5f611b8a41e8630692ee40db9c735c52abca4f8d11bcc3cfdfcb9f6d'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
