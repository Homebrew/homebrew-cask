cask :v1 => 'postbox' do
  version '4.0.1'
  sha256 'bf2a11201513667779f3f7f946eb008e0ada4d62acf6b015831b02df3a00c0d5'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version}/1_0f1324f879a065bee88bd91618de3de0/postbox-#{version}-mac64.dmg"
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'
  license :commercial
  tags :vendor => 'Postbox'
  depends_on :macos => '>= :mavericks'
  depends_on :arch => :x86_64

  app 'Postbox.app'

  zap :delete => [
                  '~/Library/Application Support/Postbox',
                  '~/Library/Caches/com.crashlytics.data/com.postbox-inc.postbox',
                  '~/Library/Caches/com.postbox-inc.postbox',
                  '~/Library/Caches/Postbox',
                  '~/Library/PDF Services/Mail PDF with Postbox',
                  '~/Library/Preferences/com.postbox-inc.postbox.plist',
                  '~/Library/Saved Application State/com.postbox-inc.postbox.savedState',
                 ]
end
