cask 'opera' do
  version '	35.0.2066.68'
  sha256 '51b7663a5beb458e91ee0815c067756fa6c51dd18f4ffb235c5b62df20494d2f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
