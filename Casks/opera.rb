cask 'opera' do
  version '51.0.2830.26'
  sha256 '3900aa62ecea9c692a407ffc63a15a974c564f6fbcb80bb4974960a1bbed62ea'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
