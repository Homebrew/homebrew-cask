cask 'mia-for-gmail' do
  version '2.3.0'
  sha256 '2e7f2d159e8aed156bac507a3637053a047efe7877df26b59449f7fdb394fcc4'

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
