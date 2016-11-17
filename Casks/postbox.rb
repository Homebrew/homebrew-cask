cask 'postbox' do
  version '5.0.6'
  sha256 '72f7ad58077a53e93f704c70145bb5cc33a60dc41d194861109566d2ba0f13ca'

  # amazonaws.com/download.getpostbox.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version}/1_b5e3d688955b655e18589b871c3dedc930bf3548/postbox-#{version}-mac64.dmg"
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
