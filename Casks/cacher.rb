cask 'cacher' do
  version '1.3.0'
  sha256 'c003fa0c6b733c0bd9640bf6d8e5faf6f798a5e8e3ab161cdd813f35d939ee88'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '7c6c8bcd7c06d273c722436a61a3943df165814d57b3629c984d34230a96cad1'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
