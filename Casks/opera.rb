cask 'opera' do
  version '41.0.2353.56'
  sha256 '85ed94db69ea7cdeef3bcefde8499322a602e28b41b9b255513773a0c27c7aa6'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
