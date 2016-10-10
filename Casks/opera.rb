cask 'opera' do
  version '40.0.2308.81'
  sha256 '8b21d54227c13e074859f7f48f108944976c444f02b3e5da07628dbaf3093bda'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
