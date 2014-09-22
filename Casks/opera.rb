class Opera < Cask
  version '24.0.1558.61'
  sha256 '2f23178ef04d318523096ef44f15b74f2b2201e6780f1b46a04207c8f2879aac'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'

  app 'Opera.app'
end
