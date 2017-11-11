cask 'navicat-for-sql-server' do
  version '12.0.17'
  sha256 '09c04352dbc9d87d0289090cddcc740315ba95418b5abbad8fa238b2e87b5270'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note',
          checkpoint: '50b205329cb0845bd871a2803390aa6599977971aedf7f32a7f42abc59d80eb6'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
