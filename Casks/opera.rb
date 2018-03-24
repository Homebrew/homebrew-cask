cask 'opera' do
  version '52.0.2871.30'
  sha256 '21f381b37738c11e73d2de90fa981ac429b954e360d3e639806b4e4546fd9dbf'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
