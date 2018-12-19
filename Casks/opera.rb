cask 'opera' do
  version '57.0.3098.102'
  sha256 '8b5225dae0292e9759e6e026d9d68d55370107acd3d22d4ccf2515b0e8a55e01'

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
