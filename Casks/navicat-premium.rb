cask 'navicat-premium' do
  version '12.1.22'
  sha256 '5b82b28d73edf66178fc27435a243aa49a859cf0139dde9d9203d8c89ed4be64'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
