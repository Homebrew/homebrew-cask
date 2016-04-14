cask 'ridibooks' do
  version '1.6.3b'
  sha256 '81cc774d9518a02050b0637c9da71f85a49afdb705c93ef334e3700e380dec21'

  # ridicorp.com was verified as official when first introduced to the cask
  url "https://cdn.ridicorp.com/app/mac/ridibooks-#{version}.dmg"
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'
  license :gratis

  app 'Ridibooks.app'

  zap delete: [
                '~/Library/Application Support/RIDI',
                '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
              ]
end
