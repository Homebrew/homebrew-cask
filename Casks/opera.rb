cask 'opera' do
  version '57.0.3098.76'
  sha256 'b992152d22b51b1a8f88eb63afed54db3909cf0a66ec7622ac5deb8116de3aa1'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
