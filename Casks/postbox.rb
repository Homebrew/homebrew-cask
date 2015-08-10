cask :v1 => 'postbox' do
  version '4.0.3'
  sha256 'a1b30b9a463822e77ab28897287de4a241f6d6680d7b8af738b10d2a1b5d097c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version}/1_01528cf325c767321113e4c62ecbb76f2e512743/postbox-#{version}-mac64.dmg"
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
