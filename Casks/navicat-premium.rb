cask 'navicat-premium' do
  version '12.1.9'
  sha256 '868daee1d17f22fc6b2eef4d9813f462d7b07ce642a410f2e621cc8717b5974a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
