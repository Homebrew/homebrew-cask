cask 'beardedspice' do
  version '2.1.3'
  sha256 '369bf1650947592d97897305b76be419125cc389894141b45f8c7cecf9185c88'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: '495b04c2d246c97aacc389c6f3c993394be30d3c1db0b899b12da612e4384dd5'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
