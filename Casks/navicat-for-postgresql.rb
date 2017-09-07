cask 'navicat-for-postgresql' do
  version '12.0.12'
  sha256 '2c52774d8fee30ab81fcc71cb3dd40236f0f221c0f7bfb6447ff78c7653a55e1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: '22a5952473f5114cfce991d98ef8351edcc45e5bd92b84d3a6ba1ded18feb2c6'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
