cask 'navicat-premium-essentials' do
  version '12.0.20'
  sha256 'd0a3a3d935764359c43e1a7e39476b1269f5184d5dd6240d0dd31889c8a7095f'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: 'c9632ec6013cc1d79279026a7d9c4d717daa3efcc355fd31b61cf98c880d7c47'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
