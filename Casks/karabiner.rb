class Karabiner < Cask
  version '10.3.0'
  sha256 '56285549cbdf17cce97c0a8f85ef867b6b7ee848d503b51636c7d9c96a724728'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  homepage 'https://pqrs.org/osx/karabiner/'
  license :unknown

  pkg 'Karabiner.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/vendor/bin/blueutil'
  binary '/Applications/Karabiner.app/Contents/Library/utilities/bin/warp-mouse-cursor-position'
  uninstall :quit => 'org.pqrs.Karabiner',
            :pkgutil => 'org.pqrs.driver.Karabiner',
            :kext => 'org.pqrs.driver.Karabiner'
  zap :delete => [
                  '~/Library/Preferences/org.pqrs.Karabiner.plist',
                  '~/Library/Preferences/org.pqrs.Karabiner-AXNotifier.plist',
                  '~/Library/Preferences/org.pqrs.Karabiner.multitouchextension.plist',
                 ]
  # todo :rmdir not yet supported
  #    :rmdir '~/Library/Application Support/Karabiner'
end
