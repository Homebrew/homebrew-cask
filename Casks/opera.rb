cask 'opera' do
  version '44.0.2510.857'
  sha256 'd341700f1b86d4359effde4354217c8a0c46f3dfc8bb50c2eceb0b42a9653613'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
