cask 'postbox' do
  version '5.0.10,1_1dbed66fb640390bbb78503accb79331a74b5454'
  sha256 '345f3133372e7e7d9398c9db97d3728b65f2dcac3c86f27880ec3b4cdb2a3946'

  # amazonaws.com/download.getpostbox.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version.before_comma}/#{version.after_comma}/postbox-#{version.before_comma}-mac64.dmg"
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'

  depends_on macos: '>= :mavericks'

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
