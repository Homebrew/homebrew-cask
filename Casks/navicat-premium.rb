cask 'navicat-premium' do
  version '12.0.10'
  sha256 '73f0403f857a9935afe13509bbe59317d26782e2f03a1fbe041050718532c0a4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
