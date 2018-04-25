cask 'cacher' do
  version '1.4.4'
  sha256 '17a64e9d4b8b5774c4c449c0dc73cfd08e7f6993385e86ba99b46a2762bb1cc9'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'fb0df71ff68e4462a9ec4872b116f9cc2c3b58fe419bde3f61ba40b0cce0925f'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
