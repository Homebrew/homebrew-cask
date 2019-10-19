cask 'cacher' do
  version '2.21.4'
  sha256 '914b54cc769c13cc52c92fe2d05773d9b55d61bbd4b48aa9822754a0ffb36a22'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
