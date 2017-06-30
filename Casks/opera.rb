cask 'opera' do
  version '46.0.2597.32'
  sha256 '3b12a16b99c3dcc05d3ea2b601a28d1ff4d2d9c210008ef57b82f4219dca34aa'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
