cask 'opera' do
  version '60.0.3255.56'
  sha256 '6d0744aa93077efc3b1667f131fb2c7f5922e34d97f29a2f581d07c0e984cafe'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  appcast 'https://ftp.opera.com/pub/opera/desktop/'
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'

  zap trash: [
               '~/Library/Preferences/com.operasoftware.Opera.plist',
               '~/Library/Application Support/com.operasoftware.Opera/',
             ]
end
