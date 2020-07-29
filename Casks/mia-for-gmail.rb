cask 'mia-for-gmail' do
  version '2.4.1'
  sha256 '0bc3cc3c641d6f5b2dcdc5962f3b3c504595c767d9388e34cfe9821a43be6b5e'

  url 'https://www.miaforgmail.com/application/notifier-pro-for-gmail/MiaForGmail.dmg'
  appcast 'https://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml'
  name 'Mia for Gmail'
  homepage 'https://www.miaforgmail.com/'

  auto_updates true

  app 'Mia for Gmail.app'

  uninstall quit:       'com.sovapps.gmailnotifier'

  zap trash: [
               '~/Library/Preferences/com.sovapps.gmailnotifier.plist',
               '~/Library/Caches/com.sovapps.gmailnotifier',
               '~/Library/Containers/com.sovapps.launchAtLoginHelper',
               '~/Library/Application Scripts/com.sovapps.gmailnotifier',
               '~/Library/Application Scripts/com.sovapps.launchAtLoginHelper',
             ]
end
