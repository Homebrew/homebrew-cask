cask 'mia-for-gmail' do
  version '2.2.8'
  sha256 '6c45200054506814033715af1a73d8302a364111b60e06d12554c0c7e8fb749e'

  url 'https://www.miaforgmail.com/application/notifier-pro-for-gmail/MiaForGmail.dmg'
  appcast 'https://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml',
          checkpoint: '34276497f30a05339aac55e6617bf9c6a2d6a6e1bdf07e87cc8964ff1a9fa9e6'
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
