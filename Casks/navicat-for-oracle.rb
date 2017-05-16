cask 'navicat-for-oracle' do
  version '11.2.18'
  sha256 'cd957470c76ebdd9ac2ba625746298650d9356640acbda5141f8515b8f1dc321'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note',
          checkpoint: '976ee6551c762789ddd6b656ddad35a11809e83a66cd3e7327fa7e1d2c384105'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
