cask 'mia-for-gmail' do
  version '2.2.7'
  sha256 '14330732c7ee96128f81004e42a80e5c2fda36610c9e7d4d1d609489d83be6bf'

  url 'https://www.miaforgmail.com/application/notifier-pro-for-gmail/MiaForGmail.dmg'
  appcast 'https://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml',
          checkpoint: '9053110423df610279b20514c7ca8cc37620c7932ca45f248ba5f891d7801914'
  name 'Mia for Gmail'
  homepage 'https://www.miaforgmail.com/'

  auto_updates true

  app 'Mia for Gmail.app'

  uninstall quit:       'com.sovapps.gmailnotifier',
            login_item: 'Mia for Gmail'

  zap delete: [
                '~/Library/Preferences/com.sovapps.gmailnotifier.plist',
                '~/Library/Caches/com.sovapps.gmailnotifier',
                '~/Library/Containers/com.sovapps.launchAtLoginHelper',
                '~/Library/Application Scripts/com.sovapps.gmailnotifier',
                '~/Library/Application Scripts/com.sovapps.launchAtLoginHelper',
              ]
end
