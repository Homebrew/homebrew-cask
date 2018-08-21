cask 'cacher' do
  version '1.5.14'
  sha256 '9ce41baab4d89de51dd0d372a920b9ded591a740097134ba20414a42fbdca415'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
