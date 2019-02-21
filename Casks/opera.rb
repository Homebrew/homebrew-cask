cask 'opera' do
  version '58.0.3135.65'
  sha256 '6ca52dc8d3a004ef0226e13cd6628f05b936f9696ac9ae5ffc32b68d861e074c'

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
