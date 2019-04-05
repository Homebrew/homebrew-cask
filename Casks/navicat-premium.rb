cask 'navicat-premium' do
  version '12.1.18'
  sha256 '045c34b8c51fb34cf6df87a30efb0eb5f2880d04bf880022518f0076058e8d7f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
