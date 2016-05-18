cask 'beardedspice' do
  version '1.2.5'
  sha256 '18d9ffeebf5f854e0d53009eb13415763f6be89959bc0daabfa17b03efe20760'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: '96245a1126a025f781fe57a99b4dde6e76f7d39339867e872064427c25e645ea'
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
