cask :v1 => 'karabiner' do
  version '10.4.0'
  sha256 'b1e3ffb7cd10ec8651c68b184c236589f182a273dad4b1c68ab2c15d36a34248'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  homepage 'https://pqrs.org/osx/karabiner/'
  license :unknown

  pkg 'Karabiner.pkg'
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
