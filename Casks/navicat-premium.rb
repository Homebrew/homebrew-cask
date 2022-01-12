cask "navicat-premium" do
  version "15.0.33"
  sha256 :no_check

  language "zh-CN" do
    url "https://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"
  desc "Database administration and development tool"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en"
    strategy :sparkle
  end

  app "Navicat Premium.app"
end
