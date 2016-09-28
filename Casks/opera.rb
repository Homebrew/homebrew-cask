cask 'opera' do
  version '40.0.2308.75'
  sha256 '130e2971bde479d9293a6e53914438c1e4cb3631e15141f227b0c6ac8c5878a1'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
