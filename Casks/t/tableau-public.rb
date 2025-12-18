cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.3.1"
  sha256 arm:   "754cd8dd398e497102d9c2c80bbfe743828cf877ca8c78a464ddd45e6457cb47",
         intel: "4e4f3a0d2c9719ed37c8c32142358170870f0a58988bb18d098928f4f884884f"

  url "https://downloads.tableau.com/esdalt/#{version}/TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: "curl/8.7.1"
  name "Tableau Public"
  desc "Explore, create and publicly share data visualisations online"
  homepage "https://public.tableau.com/s/"

  livecheck do
    cask "tableau"
  end

  pkg "TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Public.app",
  ]

  zap trash: [
    "~/Library/Caches/com.tableau.caching",
    "~/Library/Caches/com.tableausoftware.MapTiles",
  ]
end
