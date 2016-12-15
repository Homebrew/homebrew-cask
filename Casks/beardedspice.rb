cask 'beardedspice' do
  version '2.1.2'
  sha256 'e590b185494db29e8b44f05f2ccacfab735a7accf90b401e3b1c8d64cbe10d5b'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: 'ed7b2039fbb84ce8e6d26276b9ca892c1603b935a9cb34ab14786aea3e423564'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
