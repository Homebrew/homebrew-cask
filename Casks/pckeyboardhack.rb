class Pckeyboardhack < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-10.5.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en'
  version '10.5.0'
  sha256 '68432c0ad039bcd5e4ae61401e897acaa68ddefc6e2b874204d2adc95640bfc9'
  install 'PCKeyboardHack.pkg'
  uninstall :quit => 'org.pqrs.PCKeyboardHack',
            :kext => 'org.pqrs.driver.PCKeyboardHack',
            :pkgutil => 'org.pqrs.driver.PCKeyboardHack'
end
