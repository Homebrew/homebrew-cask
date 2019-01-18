cask 'cacher' do
  version '2.4.2'
  sha256 '655af3cdbaf97f8e0c6ee15d3fb4c106bf778084914eff6c329d1fdd6a0107bb'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest.yml'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
