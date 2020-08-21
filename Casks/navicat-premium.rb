cask "navicat-premium" do
  version "15.0.20"

  language "zh-CN" do
    sha256 "e8139985b76f41b34fafc064c1983b5fc41903156b275e4ebc4809c37b7f7f0f"
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    sha256 "68a77024aeab2db4664733c12721b446f0c661e370fa6250e24ae8b20fb27d48"
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"

  app "Navicat Premium.app"
end
