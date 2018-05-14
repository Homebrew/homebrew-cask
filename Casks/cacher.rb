cask 'cacher' do
  version '1.5.1'
  sha256 '309ab4d973634f4d670155c49802a0b0fab60ecb117d19d5e7859c6b4b1d5df0'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'cbb66c36d64bfe45e3dfe287f7654fc1aab266c21dc8a588826e9ca1cf05e49a'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
