class Noejectdelay < Cask
  url 'https://pqrs.org/macosx/keyremap4macbook/files/NoEjectDelay-5.3.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/noejectdelay.html.en'
  version '5.3.0'
  sha256 '95af59c80de739b35487b77866e48a5539f56f89f1a213edc6c1e7cb87fcce5d'
  install 'NoEjectDelay.pkg'
  uninstall :kext => 'org.pqrs.driver.NoEjectDelay',
            :pkgutil => 'org.pqrs.driver.NoEjectDelay'
end
