cask 'navicat-for-mysql' do
  version '12.0.27'
  sha256 'd5cad433d6c765b04c895b5224b55270c6431b2992ee42457833f2e4bdd7766a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20MySQL",
          checkpoint: 'a8c26c35c43fc4d5eb1a71f8e4307c8220b48a2627b302db58e114c0141fe2a3'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
