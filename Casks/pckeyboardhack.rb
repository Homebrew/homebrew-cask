class Pckeyboardhack < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-10.7.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en'
  version '10.7.0'
  sha256 'd9eef9edc3e1e833ca4c38abf240bfd3d649d2c9fc13be4144bbf9a304350cb2'
  install 'PCKeyboardHack.pkg'
  uninstall :quit => 'org.pqrs.PCKeyboardHack',
            :kext => 'org.pqrs.driver.PCKeyboardHack',
            :pkgutil => 'org.pqrs.driver.PCKeyboardHack'
end
