cask 'beardedspice' do
  version '2.1.1'
  sha256 'f9f6cd2848e90dda759ad45ee438015e5df0bc412aa52dd77337062a89de2dd4'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: '1d187674389b277ae27f07b417dee2de10f96061e37a5a5e7a76744e8481768a'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
