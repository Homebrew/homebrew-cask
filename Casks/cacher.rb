cask 'cacher' do
  version '1.3.3'
  sha256 'dd34d2be35256542dcd73f341c73f7068756f1dd3a84f210f7a9784bd13c4765'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'ba1e2b5364cd5d3792b1b355b0b67224d685bcec3074149699510197c42405a4'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
