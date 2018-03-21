cask 'cacher' do
  version '1.3.7'
  sha256 '251b58147e29f8fd9885725a3a2546d73fa0def0135a5f54c5e9e415c4edb07e'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '1807ec0ed4a1228dc98202baf694bd1acfcbb1fe5a6a99ffb379c6f55c41f07c'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
