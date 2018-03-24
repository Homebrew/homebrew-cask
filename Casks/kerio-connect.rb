cask 'kerio-connect' do
  version '9.2.5.9921'
  sha256 '01b1c9da268cdccbbba560e22e2d615e37e4ca4818ac57dc84c598949b6f9a6a'

  # kerio-dc-releases.kerio.com was verified as official when first introduced to the cask
  url "http://kerio-dc-releases.kerio.com/kerio-connect-client-update-darwin64-#{version}.zip"
  name 'Kerio Connect'
  homepage 'https://www.kerio.de/products/kerio-connect'

  app 'Kerio Connect.app'
end
