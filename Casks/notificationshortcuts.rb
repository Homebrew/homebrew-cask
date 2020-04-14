cask 'notificationshortcuts' do
  version '1.0.1'
  sha256 '181bd9e5b2e83349a030282564639d4e84ff52a12a510d1f82e8331b981f9b00'

  # delpriore-appcasts.s3-us-west-1.amazonaws.com/NotificationShortcuts was verified as official when first introduced to the cask
  url "https://delpriore-appcasts.s3-us-west-1.amazonaws.com/NotificationShortcuts-#{version}.zip"
  appcast 'https://delpriore-appcasts.s3-us-west-1.amazonaws.com/NotificationShortcutsCast.xml'
  name 'NotificationShortcuts'
  homepage 'https://notificationshortcuts.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'NotificationShortcuts.app'

  uninstall quit: 'particleapps.NotificationResponders'

  zap trash: [
               '~/Library/Application Support/NotificationShortcuts',
               '~/Library/Caches/particleapps.NotificationResponders',
               '~/Library/Preferences/particleapps.NotificationResponders.plist',
             ]
end
