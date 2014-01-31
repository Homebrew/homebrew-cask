class Keyremap4macbook < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/KeyRemap4MacBook-9.2.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/'
  version '9.2.0'
  sha1 'f614c318d2dcf35c5e1e9a85bab58b12238db4de'
  install 'KeyRemap4MacBook.pkg'
  uninstall :quit => 'org.pqrs.KeyRemap4MacBook',
            :pkgutil => 'org.pqrs.driver.KeyRemap4MacBook',
            :kext => 'org.pqrs.driver.KeyRemap4MacBook',
            :launchctl => 'org.pqrs.KeyRemap4MacBook.server'
end
