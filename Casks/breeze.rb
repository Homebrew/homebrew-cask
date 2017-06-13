cask 'breeze' do
  version '1.5.11'
  sha256 'eaa54f9ccc6539fb548ffa274a7317913840ee3144ed781acd4da8b0b2d0d5ba'

  url "https://autumnapps.com/downloads/Breeze#{version}.dmg"
  name 'Breeze'
  homepage 'http://autumnapps.com/breeze/'

  app 'Breeze.app'

  uninstall quit: 'com.autumnapps.direct.Breeze'

  zap delete: [
                '~/Library/Caches/com.autumnapps.direct.Breeze',
                '~/Library/Preferences/com.autumnapps.direct.Breeze.plist',
              ]
end
