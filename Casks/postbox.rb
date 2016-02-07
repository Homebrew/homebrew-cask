cask 'postbox' do
  version '4.0.8'
  sha256 '3c6e036e5dcd7f655295ceb21daf6000e0e5fb2168d887f32db46091a5a3ee54'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version}/1_6adf8a6160ac58891fe0f1b1485534368a9837ca/postbox-#{version}-mac64.dmg"
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'
  license :commercial

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
