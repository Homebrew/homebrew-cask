cask 'postbox' do
  version '7.0.8'
  sha256 'c77702fec755b6dddb0168155ade9274f7080dbb0e221cd9cdab8b405e4a0aae'

  # d3nx85trn0lqsg.cloudfront.net/mac was verified as official when first introduced to the cask
  url "https://d3nx85trn0lqsg.cloudfront.net/mac/postbox-#{version}-mac64.dmg"
  appcast 'https://www.postbox-inc.com/download/success-mac'
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'

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
