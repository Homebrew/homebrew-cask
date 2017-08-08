cask 'navicat-for-sql-server' do
  version '12.0.10'
  sha256 '59828dd38eeedbd1489a84526f17a5ca908ed3b3850bc03ffe2b7f90dd34de2a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note#M',
          checkpoint: '789127e485e0ae3dcd54eb327711cf9b1516e7c292b2982096e0dabb0b5fe08b'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
