cask :v1 => 'opera' do
  version '30.0.1835.88'
  sha256 '8ba77d1c41cb884254bf0e8504193aa6f4a7b01add25f4a58539f51155e6fd4c'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
