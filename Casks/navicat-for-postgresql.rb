cask 'navicat-for-postgresql' do
  version '12.0.26'
  sha256 'a86c818d32692ca322025e9a24cfef5ddd2cf5c7e971f8c141f7d1309b186687'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL",
          checkpoint: 'd7f00d4f071ba8c1e132db5754f82b0f10d815d35d1c465b6f7bacb1c4ea2f8d'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
