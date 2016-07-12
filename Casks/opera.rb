cask 'opera' do
  version '38.0.2220.41'
  sha256 '329630c387ed8121ec15c1c5d04b04fef67940e7b5e1926ff61e92414e3d2b3f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
