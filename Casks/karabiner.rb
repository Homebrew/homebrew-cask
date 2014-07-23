class Karabiner < Cask
  version '10.1.0'
  sha256 '0be9cf09b1a02d909ce0f98ad253d3311829318e761db1e92f1b9770225ce14e'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  homepage 'https://pqrs.org/osx/karabiner/'

  install 'Karabiner.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/vendor/bin/blueutil'
  binary '/Applications/Karabiner.app/Contents/Library/utilities/bin/warp-mouse-cursor-position'
  uninstall :quit => 'org.pqrs.Karabiner',
            :pkgutil => 'org.pqrs.driver.Karabiner',
            :kext => 'org.pqrs.driver.Karabiner'
end
