cask "navicat-premium" do
  version "15.0.22"

  language "zh-CN" do
    sha256 "bd35c65e1178084b9c2c2385607272533edf0a86c332c631dbd818a76aafdba9"
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    sha256 "dfff661abcab44af98bd80a403c7bb25f751d00d4dc73d2f21db86bd540478e4"
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"
  desc "Database administration and development tool"

  app "Navicat Premium.app"
end
