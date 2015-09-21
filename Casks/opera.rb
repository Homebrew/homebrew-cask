cask :v1 => 'opera' do
  version '32.0.1948.25'
  sha256 'b967df2c7b1dfcf39196955ef1b6ddad53b3c4bb020d2eefc5f8c9829eefbad4'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
