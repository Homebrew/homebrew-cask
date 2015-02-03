cask :v1 => 'opera' do
  version '27.0.1689.66'
  sha256 '17dacdb1bb98d79475f231e6d34530b8405ebb772e9808f637232cb89bf964aa'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
