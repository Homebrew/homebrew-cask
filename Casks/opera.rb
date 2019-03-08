cask 'opera' do
  version '58.0.3135.90'
  sha256 'f0f0c1ccfcda63fd4d49979e28d1e167eddf6fc830b43f2998d463ff6dc2c8d7'

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
