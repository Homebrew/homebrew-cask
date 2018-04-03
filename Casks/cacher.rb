cask 'cacher' do
  version '1.3.12'
  sha256 '2b494d21939e4d8082623a458bd2cf9c0ad57314c64f3acd23041cfceb7aac9f'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '715821e6e4636486e3ebb99fc1ada81b1559ad7775b79ecba91d5db7c5403518'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
