cask 'navicat-premium' do
  version '12.1.15'
  sha256 '04bb0dcad6e0157aa7f0e60ff35d4f758affcdc374fd0f3b16bdb782afdf0631'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
