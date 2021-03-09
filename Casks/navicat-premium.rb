cask "navicat-premium" do
  version "15.0.26"

  language "zh-CN" do
    sha256 "eb7ea1a9e23bce552466af041726d88c4b249df3dcc88e45b5ffe548cee177f9"
    url "https://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    sha256 "8fb80acf6e3f2ece788f263f9a53085c90cd03482f2e270eb545646fd251cbfd"
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"
  desc "Database administration and development tool"

  app "Navicat Premium.app"
end
