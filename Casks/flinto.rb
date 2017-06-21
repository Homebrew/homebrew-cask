cask 'flinto' do
  version '2.2.5'
  sha256 'ba36564afbe622df1adfdb86598ee5239ac757a61ff21f5c026fe541db9b64c5'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end
