cask :v1 => 'karabiner' do
  version '10.14.0'
  sha256 '429e88ba2e1c6a4d4f40cef9e17ff0b646e54fda3e7bc02ca7f4ed5eda7ca275'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          :sha256 => 'c68771d2943486830f431e279b2b42ebc3baf18b17fc1c174efcc2b61c8d34aa'
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
