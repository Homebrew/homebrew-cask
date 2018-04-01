cask 'cacher' do
  version '1.3.5'
  sha256 'a1b958c3bb94138e1f317c8e8d63351cac3c75d508a0746c7ef55a257d42ce75'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '8a19619feeac7357426f00bbaf8bab2e90588eb9af2470f955b731019b2d5e61'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
