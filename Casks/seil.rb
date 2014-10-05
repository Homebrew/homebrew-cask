class Seil < Cask
  version '10.11.0'
  sha256 '4ee777bf0a7f023abadb1f6a836b08484cfc2db2a19dd0b28d8942a2b638f8e5'

  url "https://pqrs.org/macosx/keyremap4macbook/files/Seil-#{version}.dmg"
  homepage 'https://pqrs.org/macosx/keyremap4macbook/seil.html.en'
  license :unknown

  pkg 'Seil.pkg'
  uninstall :quit => 'org.pqrs.Seil',
            :kext => 'org.pqrs.driver.Seil',
            :pkgutil => 'org.pqrs.driver.Seil'
  zap :delete => [
                  '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
                  '~/Library/Preferences/org.pqrs.Seil.plist',
                 ]
end
