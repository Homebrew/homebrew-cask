cask 'navicat-premium' do
  version '12.0.20'
  sha256 'c03515e386384475449b86500eb994fda4a0201cf240d1fa67e6edbacd7a8e2a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: 'c9632ec6013cc1d79279026a7d9c4d717daa3efcc355fd31b61cf98c880d7c47'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
