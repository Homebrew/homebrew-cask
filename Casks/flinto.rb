cask 'flinto' do
  version '2.1.2'
  sha256 'a9aa8a8809e5cc76af9c77efe11cb58b377a39bce307105904761e9d5c21a112'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*',
            delete:  '/Applications/FLinto.app'

  zap delete: '~/Library/Application Scripts/com.flinto.Flinto'
end
