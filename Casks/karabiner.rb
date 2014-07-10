class Karabiner < Cask
  version '10.0.0'
  sha256 'a280865dd22c5c230da7aaaae96212b74f0c06fbc39c19e1270efae8191de555'

  url 'https://pqrs.org/osx/karabiner/files/Karabiner-10.0.0.dmg'
  homepage 'https://pqrs.org/osx/karabiner/'

  install 'Karabiner.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/vendor/bin/blueutil'
  binary '/Applications/Karabiner.app/Contents/Library/utilities/bin/warp-mouse-cursor-position'
  uninstall :quit => 'org.pqrs.Karabiner',
            :pkgutil => 'org.pqrs.driver.Karabiner',
            :kext => 'org.pqrs.driver.Karabiner'
end
