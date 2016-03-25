cask 'navicat-premium' do
  version '11.2.9'
  sha256 '7e187bda2b4bc5bbf3a7b8057b84fceacb57bae48679f1845ede91468d0db890'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
