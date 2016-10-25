cask 'postbox' do
  version '5.0.5'
  sha256 'b87f775fc40fc626980c468cfea9ef397529792e4b2e4d5eeac1a16aac637791'

  # amazonaws.com/download.getpostbox.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version}/1_348aedfb4d5afd22e43adecbddf15a86b9aedad3/postbox-#{version}-mac64.dmg"
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
