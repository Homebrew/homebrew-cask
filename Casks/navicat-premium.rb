cask 'navicat-premium' do
  version '11.2.11'
  sha256 '736083bb1cc4f44cf0cdd7fcc18bf72de6c9067bbe28a22e90501f0f9c257380'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
