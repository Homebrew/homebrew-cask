cask :v1 => 'opera' do
  version '30.0.1835.125'
  sha256 'a270ae9c1b08da29615e7dff4828ce7698ea70e830cde2bb4f257831de85723c'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
