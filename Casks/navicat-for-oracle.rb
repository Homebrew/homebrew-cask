cask 'navicat-for-oracle' do
  version '12.0.17'
  sha256 'faa3a630916e8232f83bfcc2a286f90ea9014f858370a00699cb88ced37b865a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note',
          checkpoint: '32b19739cb35bd01d3271dfe541c91f0bb051760333e763a542cee21fd6ec214'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
