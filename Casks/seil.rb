cask 'seil' do
  version '12.0.0'
  sha256 'ebfcc6b8a709048cb4aa81fc7a020112f77282934c4b30aedae8448d6534d65d'

  url "https://pqrs.org/osx/karabiner/files/Seil-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/seil-appcast.xml',
          :sha256 => '4c31a2e65806980f97638ce979d8a7654fef3664af921c0ae43eb5fbf5f418b5'
  name 'Seil'
  homepage 'https://pqrs.org/osx/karabiner/seil.html'
  license :public_domain

  pkg 'Seil.sparkle_guided.pkg'

  uninstall :quit => 'org.pqrs.Seil',
            :kext => 'org.pqrs.driver.Seil',
            :pkgutil => 'org.pqrs.driver.Seil'

  zap       :delete => [
                        '~/Library/Caches/org.pqrs.PCKeyboardHack',
                        '~/Library/Caches/org.pqrs.Seil',
                        '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
                        '~/Library/Preferences/org.pqrs.Seil.plist',
                       ]

  depends_on :macos => '>= :el_capitan'
end
