cask 'flinto' do
  version '2.1.1'
  sha256 '4616f6183f2b439be32f7c6e1d4fd922527e69b6d9af647758d6f95b7058438f'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*',
            delete:  '/Applications/FLinto.app'

  zap delete: '~/Library/Application Scripts/com.flinto.Flinto'
end
