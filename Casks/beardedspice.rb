cask 'beardedspice' do
  version '2.0.0'
  sha256 'f2e29501c40c94642431f2442a5aea2607593471b6aa4db2acf9b0aea873ee85'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: '6ad07b284ab37c83d87e1f44149e46910649f8901f49b78288a66c11ef8d793f'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'
  license :oss

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
