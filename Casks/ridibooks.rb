cask 'ridibooks' do
  version '2.2.3'
  sha256 '4ea7a3447a9a28cabd19082727037582ed65b0722e99783a62a3f8d086d3bbed'

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
