cask 'opera' do
  version '56.0.3051.31'
  sha256 '9006392ab7c6948afe8137da390b1bb13e0e2c9c85efbc6d6974241357907ab5'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
