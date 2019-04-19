cask 'earthdeskprefpane' do
  version '733-2840'
  sha256 '7267631029af1c291eebebbf2d55488f22396dff06ad8f137ab2ab34e4c908b0'

  url "https://download.xericdesign.com/earthdesk-#{version}.zip"
  appcast 'https://www.xericdesign.com/sparkle/feeds/EarthDeskAppFeedV7.xml'
  name 'EarthDesk'
  homepage 'https://www.xericdesign.com/earthdesk.php'

  auto_updates true

  prefpane 'EarthDesk.prefPane'

  uninstall quit:   'com.xericdesign.earthdesk.core',
            delete: [
                      '~/Library/PreferencePanes/EarthDesk.prefpane',
                      '/Library/PreferencePanes/EarthDesk.prefpane',
                    ]

  zap trash: [
               '~/Library/Preferences/com.apple.desktop.plist',
               '~/Library/Preferences/com.xericdesign.earthdesk.core.plist',
               '~/Library/Preferences/com.xericdesign.earthdesk.engine.plist',
               '~/Library/Preferences/com.xericdesign.earthdesk.prefPane.plist',
             ]
end
