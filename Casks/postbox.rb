cask 'postbox' do
  version '7.0.2'
  sha256 '69fec0fd21595361e102d1f5f69eef7ced3d4e8f70cb37e6a6ac3a447f82e663'

  # d3nx85trn0lqsg.cloudfront.net/mac was verified as official when first introduced to the cask
  url "https://d3nx85trn0lqsg.cloudfront.net/mac/postbox-#{version}-mac64.dmg"
  appcast 'https://www.postbox-inc.com/download/success-mac'
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'

  depends_on macos: '>= :el_capitan'

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
