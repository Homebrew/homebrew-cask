cask 'navicat-for-oracle' do
  version '12.0.5'
  sha256 '31f382988d7f4c123ded37fce72e1b7dd1abb468c93cbeda37e42b2cbf7d727c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note',
          checkpoint: '14f00884aa5b471f1942c6da072ee0c852ea7369bfdf0d1cb7dbb5487c29a1bf'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
