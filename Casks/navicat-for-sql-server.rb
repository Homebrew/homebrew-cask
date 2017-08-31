cask 'navicat-for-sql-server' do
  version '12.0.12'
  sha256 'a703722275b71cb1092a112aefff94bdfdd329556e5200d08afd7ca6774b29e1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note#M',
          checkpoint: '4a0d2813984fb9efd1328783e6424ac302c3395b8f8e9513cd7384e91a22c0b6'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
