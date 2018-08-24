cask 'opera' do
  version '55.0.2994.44'
  sha256 '8db0ae1d0d106e93e6192713e76850fecbd474e84b0ac8fe1883ff9bd719cb81'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
