cask 'navicat-for-sql-server' do
  version '12.0.13'
  sha256 'c09035fff2361088cf732bd6f4f37438b270ec812a5e765c3597b0308a54e340'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note#M',
          checkpoint: '16b91bcdfa356d464140831f0cdf704be00ef83e2e37c4d370134f1362d3557f'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
