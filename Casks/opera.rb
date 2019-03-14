cask 'opera' do
  version '58.0.3135.107'
  sha256 '5811e69ce00ff74b0086b1fc1276f54afdb08770e2e7ada4e991fccd504b0e53'

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
