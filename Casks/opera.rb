cask :v1 => 'opera' do
  version '32.0.1948.69'
  sha256 'ab4e724b505b346bd310bb7e8b5dc0be53d3c6b569b76cf922e32b4d7c8ad7cd'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
