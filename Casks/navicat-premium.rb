cask "navicat-premium" do
  version "16.0.7"
  sha256 :no_check

  language "zh-CN" do
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage "https://www.navicat.com.cn/products/navicat-premium"
  end
  language "en", default: true do
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    homepage "https://www.navicat.com/products/navicat-premium"
  end

  name "Navicat Premium"
  desc "Database administration and development tool"

  livecheck do
    url "http://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"
end
