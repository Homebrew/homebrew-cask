cask 'cacher' do
  version '2.25.2'
  sha256 '26fb15724649ac11611d2753c6a720221720be473e2a4a8621c59f5e24ac1a09'

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
