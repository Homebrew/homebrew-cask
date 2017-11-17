cask 'opera' do
  version '49.0.2725.39'
  sha256 '0f5600822c5ab3ab1e1689d5e76eeef23267eb31fc670f62a02c58ce4bfdafcc'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
