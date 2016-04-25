cask 'ridibooks' do
  version '1.7.0b'
  sha256 'f1e99a271f76bda9e58524b579490b37d1100bb8fea63eae2ade07cde9660101'

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
