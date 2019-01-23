cask 'opera' do
  version '58.0.3135.47'
  sha256 '7a49405d58b59e985c965cb72c945b5d6ce4f7e631d962cebc7825ee1e55ab0e'

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
