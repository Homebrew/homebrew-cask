cask 'opera' do
  version '51.0.2830.40'
  sha256 '3443e4235acf6aea6abb183507a3797e47451680382143cb31c072c9238c5ced'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
