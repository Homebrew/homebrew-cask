class Opera < Cask
  version '24.0.1558.64'
  sha256 '77564b24e82de2a6e545b67dd97ce74dd218fa332689de424870da5db9c37314'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'

  app 'Opera.app'
end
