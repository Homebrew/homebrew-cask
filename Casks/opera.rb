cask 'opera' do
  version '44.0.2510.1449'
  sha256 '5699184a138d9ec6932b4106b3ed905ea37b5aab5d7f82ef900fe39a73013395'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
