cask 'navicat-premium' do
  version '12.1.8'
  sha256 'c200aa6ccaff478fc1e428892d35b683cee80ccacf3b611e5815bacbced07566'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
