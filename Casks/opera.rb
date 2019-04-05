cask 'opera' do
  version '58.0.3135.127'
  sha256 'd909e3b9e4489223a86c3946290510abfa5a00caa7d301a32b501e98145d5583'

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
