cask 'opera' do
  version '48.0.2685.50'
  sha256 '630003b30a435fa0d7ddc30d1610fb08d630c2c75ae60c2bbe03ff535d830a51'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
