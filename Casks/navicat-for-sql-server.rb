cask 'navicat-for-sql-server' do
  version '12.0.18'
  sha256 '1d420cfa9968fb7708309da5beb31dbb4edfdec4ff86ec48128666662fec5aec'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: 'ae4d403aec645f802aeea759736a488da8a174398ba5c506169fb9707812d59c'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
