cask 'opera' do
  version '36.0.2130.32'
  sha256 '6088cfaea4adcfef204da8bde8747c738ee715f5766ebb5168bd07c2227ee2a4'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
