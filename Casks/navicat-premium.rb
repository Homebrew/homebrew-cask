cask "navicat-premium" do
  version "15.0.26"

  language "zh-CN" do
    sha256 "eb7ea1a9e23bce552466af041726d88c4b249df3dcc88e45b5ffe548cee177f9"
    url "https://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    sha256 "cccdcfaa4787294016235d14b965a87333e61be66818ffc43268565a7c6e4a43"
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"
  desc "Database administration and development tool"

  app "Navicat Premium.app"
end
