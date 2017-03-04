cask 'earthdeskprefpane' do
  version '710-27D8'
  sha256 'f5432c12e0dc23c5cf97debc807a1c05b88ac45253ace4ddc314652458e96064'

  url "http://download.xericdesign.com/earthdesk-#{version}.zip"
  appcast 'http://www.xericdesign.com/sparkle/feeds/EarthDeskAppFeedV7.xml',
          checkpoint: '4aa87dd81a365ae91a2a6bbfc7eb0d07c8e483b9341a822f819ba4458026796a'
  name 'EarthDesk'
  homepage 'http://www.xericdesign.com/earthdesk.php'

  auto_updates true

  prefpane 'EarthDesk.prefPane'

  uninstall quit:   'com.xericdesign.earthdesk.core',
            delete: [
                      '~/Library/PreferencePanes/EarthDesk.prefpane',
                      '/Library/PreferencePanes/EarthDesk.prefpane',
                    ]

  zap delete: [
                '~/Library/Preferences/com.apple.desktop.plist',
                '~/Library/Preferences/com.xericdesign.earthdesk.core.plist',
                '~/Library/Preferences/com.xericdesign.earthdesk.engine.plist',
                '~/Library/Preferences/com.xericdesign.earthdesk.prefPane.plist',
              ]
end
