cask :v1 => 'breeze' do
  version :latest
  sha256 :no_check

  url 'https://autumnapps.com/downloads/Breeze.dmg'
  appcast 'https://www.autumnapps.com/updates/profiles/breeze.php',
          :sha256 => '57f8c2cd010312440cc9785869c79094ce673492ac42e359f2db9999e87000ab'
  name 'Breeze'
  homepage 'https://autumnapps.com/breeze/'
  license :freemium

  app 'Breeze.app'

  uninstall :quit => 'com.autumnapps.direct.Breeze'

  zap :delete => [
                  '~/Library/Caches/com.autumnapps.direct.Breeze',
                  '~/Library/Preferences/com.autumnapps.direct.Breeze.plist',
                 ]
end
