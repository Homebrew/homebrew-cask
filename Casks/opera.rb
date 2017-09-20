cask 'opera' do
  version '47.0.2631.83'
  sha256 'c72548a3fda1153e1ff75b7f4d68209ece811d04480d2e0ee87c2017208f6c5b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
