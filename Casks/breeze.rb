cask :v1 => 'breeze' do
  version '1.5.11'
  sha256 'eaa54f9ccc6539fb548ffa274a7317913840ee3144ed781acd4da8b0b2d0d5ba'

  url "https://autumnapps.com/downloads/Breeze#{version}.dmg"
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
