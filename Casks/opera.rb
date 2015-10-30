cask :v1 => 'opera' do
  version '33.0.1990.43'
  sha256 '3d0098b65960e506a1950ef1453fc9a1dc60588b6c3a42cf1e18fc024f571c58'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
