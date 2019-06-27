cask 'opera' do
  version '62.0.3331.18'
  sha256 'd22b6fc522e4bd1b5d776fc90d7222fd4c35b54dde4d238566ac553de954f06d'

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
