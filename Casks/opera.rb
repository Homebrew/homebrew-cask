cask 'opera' do
  version '52.0.2871.99'
  sha256 'bf3541ff63ee001eee31d8edbaaed6bdf711182eda62b9ac31bd42047b7b2585'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
