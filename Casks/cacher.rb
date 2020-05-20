cask 'cacher' do
  version '2.28.0'
  sha256 '0619f57b486abb55c0591fc2d26cd8dc55235948985c437d11be6457f97cd49e'

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
