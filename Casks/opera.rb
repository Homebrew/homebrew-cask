cask 'opera' do
  version '56.0.3051.43'
  sha256 '72cbe7921a41e0b7f1fd6e1d7591d85099f37436a1bc0ff2330937c0d5f2eb22'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
