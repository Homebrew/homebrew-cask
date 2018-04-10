cask 'cacher' do
  version '1.3.13'
  sha256 '9109999b6c9534eeeadcd5675a251a935276b008bb4fbacf0c27d66815c50511'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '929d1785f671121df069501258da946374d5977a9b2c8c5bcffe664cf22f5c4e'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
