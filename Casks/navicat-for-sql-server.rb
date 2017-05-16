cask 'navicat-for-sql-server' do
  version '11.2.18'
  sha256 '192b85d9f7d50ce37afab48ef834cf61de6ab298182f4e70f1a379a47c3a1478'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note',
          checkpoint: '11f0134465eb9c7f0526a03e4fcab01760bfa43352b0678e1d78364361a62625'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
