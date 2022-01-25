cask "navicat-for-oracle" do
  version "16.0.7"
  sha256 :no_check

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name "Navicat for Oracle"
  desc "Database administration and development tool for Oracle"
  homepage "https://www.navicat.com/products/navicat-for-oracle"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat for Oracle.app"
end
