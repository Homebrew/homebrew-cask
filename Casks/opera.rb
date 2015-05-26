cask :v1 => 'opera' do
  version '29.0.1795.60'
  sha256 'e9beae85aeec5ebafbfa00df118f39157753b8d75328d89d16cfcdf0fdd7e475'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
