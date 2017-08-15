cask 'opera' do
  version '47.0.2631.55'
  sha256 'a8db6cb368af538e516bce1fa3a3e1f0f0e0b1669ff5db2f9f1fd39e14e691a6'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
