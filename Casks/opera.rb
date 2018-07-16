cask 'opera' do
  version '54.0.2952.54'
  sha256 '274f8516837d7743bfb0abe4039175f58229d5f1e5cd76d1f7602139154c1be2'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
