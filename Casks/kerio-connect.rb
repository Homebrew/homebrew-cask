cask 'kerio-connect' do
  version '9.2.7.12444'
  sha256 '5b9aa3926081952cdf74a223509989fa67e7fb5c7f2629b8c6baa7bcb581fddf'

  # kerio-dc-releases.kerio.com was verified as official when first introduced to the cask
  url "http://kerio-dc-releases.kerio.com/kerio-connect-client-update-darwin64-#{version}.zip"
  name 'Kerio Connect'
  homepage 'https://www.kerio.de/products/kerio-connect'

  app 'Kerio Connect.app'
end
