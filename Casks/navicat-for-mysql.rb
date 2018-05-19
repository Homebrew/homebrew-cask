cask 'navicat-for-mysql' do
  version '12.0.26'
  sha256 '6c45e085ad885f7a11164d5485edff37f6e2753fe6569d48bb89e1b8cee6687c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20MySQL",
          checkpoint: 'e184c34990da1d3a1bd080f3498c968a459f0e4b798a6047eff350372e935149'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
