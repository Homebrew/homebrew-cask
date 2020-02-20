cask 'mia-for-gmail' do
  version '2.4.0'
  sha256 '89d2ce22341c38fa08310bc9a3a58b1d521e9757c6aa03cc009d8716e77e87ac'

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
