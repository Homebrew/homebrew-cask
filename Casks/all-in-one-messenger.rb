cask 'all-in-one-messenger' do
  version '2.2.2'
  sha256 'c4426400560634dd1450d7510e980dd18a8b52fa104d029df5fe630c9c0f777b'

  # all-in-one-messenger.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://all-in-one-messenger.ams3.digitaloceanspaces.com/All-in-One%20Messenger-#{version}.dmg"
  appcast 'https://all-in-one-messenger.ams3.digitaloceanspaces.com/latest-mac.yml'
  name 'All-in-One Messenger'
  homepage 'https://allinone.im/'

  auto_updates true

  app 'All-in-One Messenger.app'

  zap trash: [
               '~/Library/Application Scripts/im.allinone.messenger',
               '~/Library/Application Support/All-in-One Messenger',
               '~/Library/Containers/im.allinone.messenger',
               '~/Library/Preferences/im.allinone.messenger.plist',
               '~/Library/Saved Application State/im.allinone.messenger.savedState',
               '/var/db/receipts/im.allinone.messenger.bom',
               '/var/db/receipts/im.allinone.messenger.plist',
             ]
end
