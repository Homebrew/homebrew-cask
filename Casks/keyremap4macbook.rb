class Keyremap4macbook < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/KeyRemap4MacBook-9.3.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/'
  version '9.3.0'
  sha256 'eec41ff544859e570b195726404b34e6c6280a0022b4c8ae09c0c9eeeb871b18'
  install 'KeyRemap4MacBook.pkg'
  uninstall :quit => 'org.pqrs.KeyRemap4MacBook',
            :pkgutil => 'org.pqrs.driver.KeyRemap4MacBook',
            :kext => 'org.pqrs.driver.KeyRemap4MacBook',
            :launchctl => 'org.pqrs.KeyRemap4MacBook.server'
end
