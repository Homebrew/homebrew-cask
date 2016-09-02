cask 'ridibooks' do
  version '1.8.2b'
  sha256 'e2ce0c5886a6f071e8aa4f9fcc9576787b751eaca306121ec8098e2ccb86374b'

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
