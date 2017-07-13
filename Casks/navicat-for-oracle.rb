cask 'navicat-for-oracle' do
  version '12.0.7'
  sha256 '7fe008d3a0ec739dfa240c6d2cb1dcb43befbb606cc6870fc1b532e7b7acf33a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note#M',
          checkpoint: '3cf107017ce1c3ba9636cce82993f4c86f3977e2d500d1da4029bc0c1e824310'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
