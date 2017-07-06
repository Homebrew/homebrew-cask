cask 'navicat-for-sql-server' do
  version '12.0.7'
  sha256 '424f794eb4581449b08218f797d53150eaa5373770bfa946bf4217a5b8e10359'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note#M',
          checkpoint: '05a0ed62125794426753c5a9eecbc9713e016b7e805ae71beacc382aa74180cd'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
