cask 'navicat-premium' do
  version '12.1.25'
  sha256 'ca79231978300815f1ba8bc33db4da5dc8f3f6aaf53680e943bb9980cc1e92a9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
