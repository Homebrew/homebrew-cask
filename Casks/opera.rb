cask 'opera' do
  version '53.0.2907.68'
  sha256 'ab5bc09b750beba2a2c7fad62dce9f0a5de81e541d3b94fffd7959c3c1294bbb'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
