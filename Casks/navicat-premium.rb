cask "navicat-premium" do
  version "15.0.21"

  language "zh-CN" do
    sha256 "b6fc78e587a8701f927c7837407cc7368c7849706c0b7eef4bf402f768932f8a"
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    sha256 "350e2637682e17cf90dd451122a0d1012d57e2937e971d704d345ee150929abe"
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"

  app "Navicat Premium.app"
end
