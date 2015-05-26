cask :v1 => 'postbox' do
  version '4.0.0'
  sha256 '50502ad03e12366d5fbc7c9624a53dc7dfb9b1b3c23d72cd05a694a2b79f48ec'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version}/2_08c63331d92b59d2d99abea0a6eae8c0/postbox-#{version}-mac64.dmg"
  name 'Postbox'
  homepage 'http://www.postbox-inc.com/'
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
