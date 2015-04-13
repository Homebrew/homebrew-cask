cask :v1 => 'seil' do
  version '11.0.0'
  sha256 '4b2a5afe8c45a46af7b8a5ef291615627d795c90ba1614b5532eafa479e8f30b'

  url "https://pqrs.org/macosx/keyremap4macbook/files/Seil-#{version}.dmg"
  homepage 'https://pqrs.org/macosx/keyremap4macbook/seil.html.en'
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
