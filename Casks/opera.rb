cask 'opera' do
  version '40.0.2308.62'
  sha256 'ed1bb49ea4294a601bab57f227d0e8010089936740d492de8a0c77042edb8722'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
