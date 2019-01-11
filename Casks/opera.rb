cask 'opera' do
  version '57.0.3098.116'
  sha256 '2dea54ab3d4cca87ca8f80ce999ea629a0b78eb02450df293a1ad6840dd28445'

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
