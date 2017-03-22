cask 'navicat-premium' do
  version '11.2.17'
  sha256 'c84fbe4c60620b9c880f0dad5183af25c3739041ec878470e4454e4e1d844e2c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
