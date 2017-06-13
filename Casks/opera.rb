cask 'opera' do
  version '45.0.2552.898'
  sha256 '3b0cab4c8a9635b563d5539647da1e0e761c6f2491519a3c647546ac69c4143a'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
