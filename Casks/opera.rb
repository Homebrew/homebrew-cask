cask 'opera' do
  version '47.0.2631.80'
  sha256 '4461bd227f86031256cb59f0d57b429cb24dcba88a7c3a900db9ed5b5306f69d'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
