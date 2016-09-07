cask 'opera' do
  version '39.0.2256.71'
  sha256 '0be88299803dd664defbb92ddf058251fcf087986e9ed28158e94e315e08fb00'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
