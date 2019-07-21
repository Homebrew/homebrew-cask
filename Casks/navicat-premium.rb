cask 'navicat-premium' do
  version '12.1.23'
  sha256 '4a8611f2654b7d1e3c563d40c9ad16a584acd7693030f959101e862900725003'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
