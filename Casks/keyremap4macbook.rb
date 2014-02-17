class Keyremap4macbook < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/KeyRemap4MacBook-9.3.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/'
  version '9.3.0'
  sha1 '093ae5fc252ea61c7a22af197e9930ae7943c119'
  install 'KeyRemap4MacBook.pkg'
  uninstall :quit => 'org.pqrs.KeyRemap4MacBook',
            :pkgutil => 'org.pqrs.driver.KeyRemap4MacBook',
            :kext => 'org.pqrs.driver.KeyRemap4MacBook',
            :launchctl => 'org.pqrs.KeyRemap4MacBook.server'
end
