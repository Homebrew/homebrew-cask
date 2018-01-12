cask 'opera' do
  version '50.0.2762.58'
  sha256 '6628f814d79bf70158f9e8892a138cc60006d56fbab4bc04e06ac30f96666fde'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
