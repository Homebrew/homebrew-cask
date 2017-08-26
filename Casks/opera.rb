cask 'opera' do
  version '47.0.2631.71'
  sha256 '918876b5c784d8823cea362cc808ad16dd873bc8fe07b92396ba246afbd54532'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
