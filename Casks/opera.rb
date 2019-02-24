cask 'opera' do
  version '58.0.3135.68'
  sha256 '9809135d9d0a142c6a58f24220b8639401817765d48829594ed3b23cbb6bbc65'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'

  zap trash: [
               '~/Library/Preferences/com.operasoftware.Opera.plist',
               '~/Library/Application Support/com.operasoftware.Opera/',
             ]
end
