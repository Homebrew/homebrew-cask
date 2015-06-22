cask :v1 => 'seil' do
  version '11.2.0'
  sha256 '783426d11dbc2e75fdce3410ad8433f58d69b9a46696828f63f69e4847c53547'

  url "https://pqrs.org/osx/karabiner/files/Seil-#{version}.dmg"
  name 'Seil'
  homepage 'https://pqrs.org/osx/karabiner/seil.html'
  license :public_domain

  pkg 'Seil.pkg'

  uninstall :quit => 'org.pqrs.Seil',
            :kext => 'org.pqrs.driver.Seil',
            :pkgutil => 'org.pqrs.driver.Seil'
  zap       :delete => [
                        '~/Library/Caches/org.pqrs.PCKeyboardHack',
                        '~/Library/Caches/org.pqrs.Seil',
                        '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
                        '~/Library/Preferences/org.pqrs.Seil.plist',
                       ]
end
