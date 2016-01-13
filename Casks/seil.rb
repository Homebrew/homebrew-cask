cask 'seil' do
  version '12.0.0'
  sha256 'ebfcc6b8a709048cb4aa81fc7a020112f77282934c4b30aedae8448d6534d65d'

  url "https://pqrs.org/osx/karabiner/files/Seil-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/seil-appcast.xml',
          :checkpoint => '977311bef20fa2d87ccf1454dee91b534eebf3946385b8abaa3097cac874146b'
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
