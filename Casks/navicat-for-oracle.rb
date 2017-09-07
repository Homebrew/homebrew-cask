cask 'navicat-for-oracle' do
  version '12.0.12'
  sha256 'a40c2310fe3b97a8d871a1ecf8e158caa155c3cb72308a2841bafc5b623cc1cb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note#M',
          checkpoint: 'eca4933d1021c0a51c96126eb80023c153c09d738f17c9ce11e1ef00ed57eb8d'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
