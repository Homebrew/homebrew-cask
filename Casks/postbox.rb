cask 'postbox' do
  version '5.0.7'
  sha256 '015db7354349f8e5beeeb9bbc8ecdc9f0d4038a8f50e94bbb201cac31c87dc16'

  # amazonaws.com/download.getpostbox.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version}/1_5ba5f85e8058221b7e2dfba23f26e3232bb483b9/postbox-#{version}-mac64.dmg"
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'

  depends_on macos: '>= :mavericks'
  depends_on arch: :x86_64

  app 'Postbox.app'

  zap delete: [
                '~/Library/Application Support/Postbox',
                '~/Library/Caches/com.crashlytics.data/com.postbox-inc.postbox',
                '~/Library/Caches/com.postbox-inc.postbox',
                '~/Library/Caches/Postbox',
                '~/Library/PDF Services/Mail PDF with Postbox',
                '~/Library/Preferences/com.postbox-inc.postbox.plist',
                '~/Library/Saved Application State/com.postbox-inc.postbox.savedState',
              ]
end
