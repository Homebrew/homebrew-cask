cask 'cacher' do
  version '2.6.5'
  sha256 'f7fb67858abe27d051d6505dedcc64ad61e27eadd6f70c1be8c6e0c2b5b6ab9d'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
