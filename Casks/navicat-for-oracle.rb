cask 'navicat-for-oracle' do
  version '12.0.26'
  sha256 'ef78fe563d4fc46e36f3aff801707accb4386f41a4a467974c10bd0c4e83e916'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20Oracle",
          checkpoint: '207d327121aa651fc9d3d5adcca51a708ae56a94f89bb08eea45458d30263eeb'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
