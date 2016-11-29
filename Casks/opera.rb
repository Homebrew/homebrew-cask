cask 'opera' do
  version '41.0.2353.69'
  sha256 '94bdb2f3e6733e576d7f10694637292c2dc02c81bfa35092c879b4b7648ff54f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
