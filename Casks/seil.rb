cask 'seil' do
  version '12.0.0'
  sha256 'ebfcc6b8a709048cb4aa81fc7a020112f77282934c4b30aedae8448d6534d65d'

  url "https://pqrs.org/osx/karabiner/files/Seil-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/seil-appcast.xml',
          :sha256 => 'd9d5a519c003a8c8b396fe7d8d1298d9202e7d252fcd679dd09983005b33f343'
  name 'Seil'
  homepage 'https://pqrs.org/osx/karabiner/seil.html'
  license :public_domain

  depends_on :macos => '>= :el_capitan'

  pkg 'Seil.sparkle_guided.pkg'

  uninstall :quit    => 'org.pqrs.Seil',
            :kext    => 'org.pqrs.driver.Seil',
            :pkgutil => 'org.pqrs.driver.Seil'

  zap       :delete => [
                         '~/Library/Caches/org.pqrs.PCKeyboardHack',
                         '~/Library/Caches/org.pqrs.Seil',
                         '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
                         '~/Library/Preferences/org.pqrs.Seil.plist',
                       ]
end
