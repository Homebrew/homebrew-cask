cask 'beardedspice' do
  version '2.1.0'
  sha256 '72b4c374ea02f50962312c93aa4d08ced2082bf86deb67b4778a62a95eea3f01'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: 'a094964523a941114a507e6ff6e3a3cb10dcdbd4fa3cb6acab693bb5f31ed438'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
