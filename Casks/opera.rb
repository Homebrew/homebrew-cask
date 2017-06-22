cask 'opera' do
  version '46.0.2597.26'
  sha256 'bfa6c0961f77847934cde994fc5a29d4a78b13e394ebe81e7d7496b7aba8200b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
