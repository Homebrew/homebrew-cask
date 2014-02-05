class Pckeyboardhack < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-10.5.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en'
  version '10.5.0'
  sha1 '518ff35d257ccc3fbd974f4b6c1e2d8d9de4a901'
  install 'PCKeyboardHack.pkg'
  uninstall :quit => 'org.pqrs.PCKeyboardHack',
            :kext => 'org.pqrs.driver.PCKeyboardHack',
            :pkgutil => 'org.pqrs.driver.PCKeyboardHack'
end
