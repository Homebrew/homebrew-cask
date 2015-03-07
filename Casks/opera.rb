cask :v1 => 'opera' do
  version '27.0.1689.76'
  sha256 'eb6f107865eb195c989a560e3d35fe44f50ae531376fc9f53e65d4a655e78195'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
