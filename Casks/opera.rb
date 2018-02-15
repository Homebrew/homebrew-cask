cask 'opera' do
  version '51.0.2830.34'
  sha256 '58c8d64a7299112f0893a0a404318518d88a79f282f7803d362114424bca736b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
