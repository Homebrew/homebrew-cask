cask 'navicat-for-oracle' do
  version '12.0.13'
  sha256 'b4a5633fa1941eca2771be8862daae85ffa6f1f793d419c78f1617bdfbb037c6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note#M',
          checkpoint: 'f1fedac035fa882716f62197132b6a086d5ac75d164d32f6e96bd4bb6fd9f239'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
