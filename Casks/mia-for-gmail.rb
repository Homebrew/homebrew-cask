cask 'mia-for-gmail' do
  version '2.2.8'
  sha256 '6c45200054506814033715af1a73d8302a364111b60e06d12554c0c7e8fb749e'

  url 'https://www.miaforgmail.com/application/notifier-pro-for-gmail/MiaForGmail.dmg'
  appcast 'https://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml'
  name 'Mia for Gmail'
  homepage 'https://www.miaforgmail.com/'

  auto_updates true

  app 'Mia for Gmail.app'

  uninstall quit:       'com.sovapps.gmailnotifier',
            login_item: 'Mia for Gmail'

  zap trash: [
               '~/Library/Preferences/com.sovapps.gmailnotifier.plist',
               '~/Library/Caches/com.sovapps.gmailnotifier',
               '~/Library/Containers/com.sovapps.launchAtLoginHelper',
               '~/Library/Application Scripts/com.sovapps.gmailnotifier',
               '~/Library/Application Scripts/com.sovapps.launchAtLoginHelper',
             ]
end
