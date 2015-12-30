cask 'opera' do
  version '34.0.2036.25'
  sha256 '8e1caec4cf7492d763ea77d07e40d29afc22d4b2b3c139a95b01f89fbb2ff79f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
