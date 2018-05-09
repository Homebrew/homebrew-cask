cask 'navicat-for-sql-server' do
  version '12.0.25'
  sha256 '22818e9893c0f59c0c501fd79adc994c77d658dac580602a268cc96b66d2f82d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: '60d45e2790d5ad9fc6be89b5e5cd79a69267b549a3aeab8ab0803211175f512e'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
