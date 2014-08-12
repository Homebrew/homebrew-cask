class Seil < Cask
  version '10.10.0'
  sha256 'a61653ce058dc943a403583281a1a10b2b8bd496362ecf7b93989fc90f5547df'

  url 'https://pqrs.org/macosx/keyremap4macbook/files/Seil-10.10.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/seil.html.en'

  install 'Seil.pkg'
  uninstall :quit => 'org.pqrs.Seil',
            :kext => 'org.pqrs.driver.Seil',
            :pkgutil => 'org.pqrs.driver.Seil'
end
