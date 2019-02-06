cask 'opera' do
  version '58.0.3135.53'
  sha256 'e2f82f81d73b21220c059a2ff537e3de23413fdb5480ea74ee1b3786e3f334e8'

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
