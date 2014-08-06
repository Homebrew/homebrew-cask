class Opera < Cask
  version '23.0.1522.72'
  sha256 'd07528a7cd427c7110f7b666b5fadc0f77d83693db91e147bdac2848e654b0e9'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'

  link 'Opera.app'
end
