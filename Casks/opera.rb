cask 'opera' do
  version '36.0.2130.46'
  sha256 '16babd1ccad88d8598b3615645b6711eabe208afe8b535df10eeca7c09166659'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
