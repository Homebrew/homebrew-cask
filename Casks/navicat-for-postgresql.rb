cask "navicat-for-postgresql" do
  version "16.0.8"
  sha256 :no_check

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name "Navicat for PostgreSQL"
  desc "Database administration and development tool for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat for PostgreSQL.app"
end
