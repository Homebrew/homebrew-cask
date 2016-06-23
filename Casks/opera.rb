cask 'opera' do
  version '38.0.2220.31'
  sha256 '4986440d46808b45e157710ecec374c98b241d1318d4f894d7cffeb44b2fffe8'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
