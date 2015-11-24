cask :v1 => 'opera' do
  version '33.0.1990.115'
  sha256 '3c839c5537526c57dcf3eacb1573571ee8c8aaee8f7f088068e76e4411687771'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
