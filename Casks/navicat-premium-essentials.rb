cask 'navicat-premium-essentials' do
  version '12.0.20'
  sha256 'a09ad00c0e99a13e676581bc58d1f9ed923241fb73f1e84f37c267708a96bba5'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: 'c9632ec6013cc1d79279026a7d9c4d717daa3efcc355fd31b61cf98c880d7c47'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
