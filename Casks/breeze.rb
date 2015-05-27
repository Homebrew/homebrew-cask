cask :v1 => 'breeze' do
  version :latest
  sha256 :no_check

  url 'https://autumnapps.com/downloads/Breeze.dmg'
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