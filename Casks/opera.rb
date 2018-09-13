cask 'opera' do
  version '55.0.2994.59'
  sha256 '0c715bd5164c0394f8aa1bc35b6cf5b9a17967cf1e307366f5bcf8c31b1d2379'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
