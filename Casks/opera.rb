cask 'opera' do
  version '43.0.2442.1144'
  sha256 '4753feded98643b8b29a1ff35242f95374ee40779c4871ec64ef7037fac90015'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
