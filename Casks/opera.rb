cask 'opera' do
  version '63.0.3368.88'
  sha256 '2fcb3400ef0ced08ee10b3762ff6d9299fa3d51342a19d0722dce1dedeb5d8ea'

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
