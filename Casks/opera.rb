cask :v1 => 'opera' do
  version '31.0.1889.174'
  sha256 '426e1889e5e3ef279ab09b1141757fd13b1bb65ceb62e20bd972679a265ca110'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
