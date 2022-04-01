cask "navicat-premium" do
  version "16.0.12"
  sha256 :no_check

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"
end
