cask 'ridibooks' do
  version '2.0.0'
  sha256 '929a114a862e5785f25507f5e94a9133fc01f4da5e34c5eb39270884c1282c56'

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
