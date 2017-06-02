cask 'beardedspice' do
  version '2.2.2'
  sha256 '4a0c0da3182447ec873d5fb56ecd59d4ce1aca6c2718eb1a4236dc3025f2c989'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: 'bc0fc1c9886b9fe1b131fdf1bc63b99a16fc2ea47d681e29d162795f03999e1c'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
