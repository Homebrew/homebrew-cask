cask 'opera' do
  version '58.0.3135.79'
  sha256 'f282273a96c9d4e5f0d9f0316d3dec9fa82341809ac1d0041fc9cd8d67cfdfea'

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
