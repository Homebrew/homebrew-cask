cask 'navicat-premium' do
  version '11.2.13'
  sha256 '2c345c631fc1f84cded670f0accad3ad2553959eff0c628e454ad84add06be48'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
