cask 'opera' do
  version '37.0.2178.43'
  sha256 '0facd8ad0003fe7c9f6115ebb6b1d6354c2ba477164c229b19ea61464170e476'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
