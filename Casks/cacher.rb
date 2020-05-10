cask 'cacher' do
  version '2.27.1'
  sha256 '8b178a779d385f5dbc987982736448616536a2d575cec4fe977b304d36312e16'

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
