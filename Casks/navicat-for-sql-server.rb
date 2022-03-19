cask "navicat-for-sql-server" do
  version "16.0.11"
  sha256 :no_check

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name "Navicat for SQL Server"
  desc "Database administration and development tool for SQL-server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat For SQL Server.app"
end
