cask 'earthdeskprefpane' do
  version '721-27E5'
  sha256 '59262b3b71035294988496530847395a2d6f9a3e48ccc2de40e87a1b3c5c3884'

  url "http://download.xericdesign.com/earthdesk-#{version}.zip"
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
