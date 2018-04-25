cask 'navicat-premium' do
  version '12.0.25'
  sha256 '09b835628266744e8ccf4779563bb75da49103fa1566c381276c34c97723c910'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '17e7f0995176600d97233462e27d87f4a18b8ecb1ab85be979d4af4e8f7dd74c'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
