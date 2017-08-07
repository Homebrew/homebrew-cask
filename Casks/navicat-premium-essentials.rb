cask 'navicat-premium-essentials' do
  version '12.0.10'
  sha256 '2afcd68020c16e88f72793bb9e0c669908a2340daef3e74e0145411cb84c0154'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
