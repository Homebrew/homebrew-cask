cask 'opera' do
  version '38.0.2220.29'
  sha256 '0b4fe449436df4987680714c31e7d0ef25669d5fb2f3d38ec36c344fd4284081'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
