cask :v1 => 'opera' do
  version '33.0.1990.58'
  sha256 '04d66b4feeb8dd7adbb2aed6ad7ac6e78b1370e77c48e785a859dace261dd3b1'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
