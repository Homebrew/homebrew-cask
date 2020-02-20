cask 'postbox' do
  version '7.0.11'
  sha256 '89a5becffc6062b92197f9aeab3028e162ddddbba5c784cbfc9a705fac0ff050'

  # d3nx85trn0lqsg.cloudfront.net/mac was verified as official when first introduced to the cask
  url "https://d3nx85trn0lqsg.cloudfront.net/mac/postbox-#{version}-mac64.dmg"
  appcast 'https://www.postbox-inc.com/download/success-mac'
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Postbox.app'

  zap trash: [
               '~/Library/Application Support/Postbox',
               '~/Library/Application Support/PostboxApp',
               '~/Library/Caches/com.crashlytics.data/com.postbox-inc.postbox',
               '~/Library/Caches/com.postbox-inc.postbox',
               '~/Library/Caches/Postbox',
               '~/Library/Caches/PostboxApp',
               '~/Library/PDF Services/Mail PDF with Postbox',
               '~/Library/Preferences/com.postbox-inc.postbox.plist',
               '~/Library/Saved Application State/com.postbox-inc.postbox.savedState',
             ]
end
