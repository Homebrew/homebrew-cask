cask "navicat-premium" do
  version "15.0.24"

  language "zh-CN" do
    sha256 "b445b658654e2fa32e788f8175c7bdf4da87be97033b61eae7664a4deff9a9dc"
    url "https://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    sha256 "0df19642f430db7d9032faac3fb00d9a2b040754f776ec4ae8da719a7c52437b"
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"
  desc "Database administration and development tool"

  app "Navicat Premium.app"
end
