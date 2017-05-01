cask 'ridibooks' do
  version '2.2.2'
  sha256 'e41e6c8fd79e88fa8ffb0198bc7f91c427ee5e44b2a97b2c99972d47898a0dae'

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
