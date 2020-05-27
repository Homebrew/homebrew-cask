cask 'cacher' do
  version '2.28.1'
  sha256 '28517c0fdc873728c9de99056e0c0f9cb9beddbfbc579ebac3846dced67939be'

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
