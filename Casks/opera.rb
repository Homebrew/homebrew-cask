cask 'opera' do
  version '34.0.2036.50'
  sha256 'bd75f6c6dce8cb4ef74fd21f7d08de1ed5ada8460032a58ebf7ab4e920a3dfa5'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
