cask 'iridium-extra' do
  version '51.1.0'
  sha256 'b0de307fef0bc1ac1123ac8f480c4a2178b6ba2849578f38d6c10dad35c04d6d'

  url "https://downloads.iridiumbrowser.de/macosx/#{version}/iridium_browser_extra_#{version}_osx_x64.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macosx/',
          checkpoint: '0a338c863d60192ea9b00df8b50aa90fc4b7d298b7e895284fab5b19d29888ca'
  name 'Iridium Browser'
  homepage 'https://iridiumbrowser.de/'

  app 'Iridium-extra.app'

  zap delete: [
                '~/Library/Preferences/de.iridiumbrowser.plist',
                '~/Library/Caches/de.iridiumbrowser',
                '~/Library/Application Support/Iridium',
                '~/Library/Saved Application State/de.iridiumbrowser.savedState',
              ]
end
