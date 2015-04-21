cask :v1 => 'opera' do
  version '28.0.1750.51'
  sha256 '650a722d9fbc43a6ca447ad1b0911b7ddf511c279759462c29f4531372fa198a'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
