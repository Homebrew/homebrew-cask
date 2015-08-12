cask :v1 => 'seil' do
  version '11.3.0'
  sha256 '5fd57db4f96b833c4f1005b3d68711bb9ea52f0db8e98a0793eb2a9ff5d290b2'

  url "https://pqrs.org/osx/karabiner/files/Seil-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/seil-appcast.xml',
          :sha256 => '1491ab1babc8ec5c65d845f9b0bf68b9ef575cc46b1ec7e41696b4eeb3fa3e7e'
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
