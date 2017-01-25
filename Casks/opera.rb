cask 'opera' do
  version '42.0.2393.351'
  sha256 '9a0baa36748fc0850dad66fa2738e5247f813b23152b3495ed2bb254b5248acf'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
