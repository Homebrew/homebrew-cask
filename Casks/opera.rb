cask 'opera' do
  version '46.0.2597.57'
  sha256 '9b897171ebdb1ab550211b09f06452b8f0d23520524f3fbe86721755df400976'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
