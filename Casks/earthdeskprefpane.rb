cask 'earthdeskprefpane' do
  version '720-27E2'
  sha256 '53a4ad757f5603af617443efdc3a7bd0128841cf3711de4b92ffde281fadaf36'

  url "http://download.xericdesign.com/earthdesk-#{version}.zip"
  appcast 'http://www.xericdesign.com/sparkle/feeds/EarthDeskAppFeedV7.xml'
  name 'EarthDesk'
  homepage 'http://www.xericdesign.com/earthdesk.php'

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
