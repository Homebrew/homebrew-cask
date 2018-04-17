cask 'cacher' do
  version '1.4.3'
  sha256 '9dfc8770be577632fd902a20bbd6009a269544bbb676db2fa8c908463222be16'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'ae05a8700eb297ea87aedba46431a73965667fe3d231c7572c705ae4328e199d'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
