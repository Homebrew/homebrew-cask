cask 'opera' do
  version '54.0.2952.54'
  sha256 '381720c23ba6bd8c0e39452cdda2fb5df556a7c0eaee5fe32d37ff977df40a7e'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
