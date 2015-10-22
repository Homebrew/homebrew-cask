cask :v1 => 'karabiner' do
  version '10.11.0'
  sha256 'fb23658f7be3c5650724c46a48ba3ca36bb71dd66ae8b594a301cb85b0b1ed00'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          :sha256 => 'a2e51c1773f2a62fd2f8475ec854caca7464389a373013a60804d6bd1f344c09'
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
