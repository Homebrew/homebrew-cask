cask :v1 => 'opera' do
  version '26.0.1656.60'
  sha256 'c2158afb3f874ced1558f28fa24ee49bd4444023e263ec0776bc1a3c511143d3'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
