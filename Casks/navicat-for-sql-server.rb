cask 'navicat-for-sql-server' do
  version '12.0.20'
  sha256 'c1082d63581b2fcc7a17615c3b79f8e5c8bed598743b8b5a0f2a6c22d0156ab9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: '05520d7a48299ce9dcf269f155730eb0a7d0128c570938c13bb9a8d0b9a864cf'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
