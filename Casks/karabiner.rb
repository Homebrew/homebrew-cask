cask :v1 => 'karabiner' do
  version '10.10.0'
  sha256 '82655a65f6be6736307f90dd208be9cc02f551e861c0c82a2a4192888283558d'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          :sha256 => 'aa0d234deaa06cbca4df5fc1acd767ca97fa7a37f8ee97ab5f7d9d9e57202d8c'
  name 'Karabiner'
  name 'KeyRemap4MacBook'
  homepage 'https://pqrs.org/osx/karabiner/'
  license :public_domain

  pkg 'Karabiner.sparkle_guided.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/vendor/bin/blueutil'
  binary '/Applications/Karabiner.app/Contents/Library/utilities/bin/warp-mouse-cursor-position'

  uninstall :quit => 'org.pqrs.Karabiner',
            :pkgutil => 'org.pqrs.driver.Karabiner',
            :kext => 'org.pqrs.driver.Karabiner'
  zap       :delete => [
                        '~/Library/Application Support/Karabiner',
                        '~/Library/Application Support/KeyRemap4MacBook',
                        '~/Library/Caches/org.pqrs.KeyRemap4MacBook',
                        '~/Library/Preferences/org.pqrs.Karabiner-AXNotifier.plist',
                        '~/Library/Preferences/org.pqrs.Karabiner.multitouchextension.plist',
                        '~/Library/Preferences/org.pqrs.Karabiner.plist',
                       ]
end
