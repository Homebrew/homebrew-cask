cask 'cacher' do
  version '1.4.2'
  sha256 '29002d9237bc34c2de5f718acc4958e0119e809a95729ca6aa8f1d5472041c4b'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '23aeaf76109f54134b36385b75422fef46b6a50a02056888e11bfd0a5b0791db'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
