cask 'keycue' do
  version '8.4'
  sha256 '1db3dfc76f14697b9e90713d1f1206d889adaf6b20b0756c183e6c506ef47435'

  url "http://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name 'KeyCue'
  homepage 'http://www.ergonis.com/products/keycue/'

  app 'KeyCue.app'

  zap delete: [
                '~/Library/Application Support/KeyCue',
                '~/Library/Preferences/com.macility.keycue.plist',
              ]
end
