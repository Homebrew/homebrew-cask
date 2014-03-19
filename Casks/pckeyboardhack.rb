class Pckeyboardhack < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-10.6.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en'
  version '10.6.0'
  sha256 '4b44f93fefda81fa526399548079a0f6c0b01a68d5c31aacf703ac26e4d482a3'
  install 'PCKeyboardHack.pkg'
  uninstall :quit => 'org.pqrs.PCKeyboardHack',
            :kext => 'org.pqrs.driver.PCKeyboardHack',
            :pkgutil => 'org.pqrs.driver.PCKeyboardHack'
end
