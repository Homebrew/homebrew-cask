cask 'navicat-for-oracle' do
  version '12.0.20'
  sha256 '2509b82d9c338baaacad725f80ca88ba44ff28107301aaeca7b760cd0a5b363b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: 'ec4a07a730f2758d429430df4aa739ae70360f94568988b2fed84c050d0edfac'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
