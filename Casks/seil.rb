cask :v1 => 'seil' do
  version '11.1.0'
  sha256 'eb87ad8b903ba14de69ce7e64913a85d53cc59ee8af5fa916211c3a00d29bf7d'

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
