cask :v1 => 'opera' do
  version '30.0.1835.52'
  sha256 '0c820174803d3719dc5f2e79f1e8a0fffc1fb1e01f542b284b5e9ebe74d0b166'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
