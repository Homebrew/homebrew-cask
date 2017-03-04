cask 'ridibooks' do
  version '2.1.3'
  sha256 '1415c9c7f88c9e45fd5e91bc7952934b1958b21ede6ca4d80e2e44ef9d8bef2e'

  # ridicorp.com was verified as official when first introduced to the cask
  url "https://cdn.ridicorp.com/app/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  app 'Ridibooks.app'

  zap delete: [
                '~/Library/Application Support/RIDI',
                '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
              ]
end
