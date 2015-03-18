cask :v1 => 'opera' do
  version '28.0.1750.48'
  sha256 'b710d4207aec64a7bb4dab77a826a5423bb37aa296a925353ca835a347956534'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
