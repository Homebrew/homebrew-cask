cask 'opera' do
  version '56.0.3051.104'
  sha256 '018217a2620364ce3d7bed23ee38e66b07e2fd5aec4344fd4e45b7766a9c2223'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'

  zap trash: [
               '~/Library/Application Support/com.operasoftware.Opera',
               '~/Library/Caches/com.operasoftware.Opera',
               '~/Library/Saved Application State/com.operasoftware.Opera.savedState',
             ]
end
