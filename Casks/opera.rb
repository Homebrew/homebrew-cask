cask 'opera' do
  version '43.0.2442.991'
  sha256 '8a13fa40182325d7f42fbb08777639461237594e7179c81199284a1169ff78f5'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
