cask 'opera' do
  version '57.0.3098.91'
  sha256 'ba9113fac5cc98f8bb774ede5e2c8de1050f453edd03f875b8e2fed5274b0ed3'

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
