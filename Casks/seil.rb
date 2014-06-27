class Seil < Cask
  version '10.8.0'
  sha256 'f581b1c1c33aa1fb320fc6a8fc69b6c974986e9322714dea9ec6a262f261c5d2'

  url 'https://pqrs.org/macosx/keyremap4macbook/files/Seil-10.8.0.dmg'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/seil.html.en'

  install 'Seil.pkg'
  uninstall :quit => 'org.pqrs.Seil',
            :kext => 'org.pqrs.driver.Seil',
            :pkgutil => 'org.pqrs.driver.Seil'
end
