cask "navicat-premium" do
  version "15.0.25"

  language "zh-CN" do
    sha256 "45ae7934267f0ccd1aca5a044159f20ef4bd34b818ddf75df972a18e4500fc88"
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
