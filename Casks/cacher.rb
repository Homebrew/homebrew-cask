cask 'cacher' do
  version '2.0.11'
  sha256 '8c39c4224685c5d70cedc7751ffa1c9826b8b9401ec225d9c49011f27a3ead36'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
