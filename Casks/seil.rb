class Seil < Cask
  version '10.9.0'
  sha256 '25698cdc0b7e52b1c6cee58cdccd5104714d28d586b6707582c6d7ff2cde11b3'

  url 'https://pqrs.org/macosx/keyremap4macbook/files/Seil-10.9.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/seil.html.en'

  install 'Seil.pkg'
  uninstall :quit => 'org.pqrs.Seil',
            :kext => 'org.pqrs.driver.Seil',
            :pkgutil => 'org.pqrs.driver.Seil'
end
