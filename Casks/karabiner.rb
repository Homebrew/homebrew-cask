class Karabiner < Cask
  version '10.2.0'
  sha256 'a5bd3717023d44a425f480289e13a66652bfe70f87c97bea03e73fded6283529'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  homepage 'https://pqrs.org/osx/karabiner/'

  pkg 'Karabiner.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/vendor/bin/blueutil'
  binary '/Applications/Karabiner.app/Contents/Library/utilities/bin/warp-mouse-cursor-position'
  uninstall :quit => 'org.pqrs.Karabiner',
            :pkgutil => 'org.pqrs.driver.Karabiner',
            :kext => 'org.pqrs.driver.Karabiner'
  zap :files => [
                 '~/Library/Preferences/org.pqrs.Karabiner.plist',
                 '~/Library/Preferences/org.pqrs.Karabiner-AXNotifier.plist',
                 '~/Library/Preferences/org.pqrs.Karabiner.multitouchextension.plist',
                ]
  # todo :rmdir not yet supported
  #    :rmdir '~/Library/Application Support/Karabiner'
end
