cask 'opera' do
  version '55.0.2994.61'
  sha256 '7daa0d81945e6ff3019a5ce94c8481e03c5c1d49861f77167da801e9981d235b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
