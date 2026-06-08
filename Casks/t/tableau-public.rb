cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.1.2"
  sha256 arm:   "c3dcadf1467c5296f62e42369c5de65bd7edff62a816d60d3c96feffcb493130",
         intel: "f63d1a6528d3207d4e644cbb514a3364cc9b0649b6f1aff05fab550f6d7068d0"

  on_arm do
    depends_on macos: :ventura
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://downloads.tableau.com/esdalt/#{version}/TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: :curl
  name "Tableau Public"
  desc "Explore, create and publicly share data visualisations online"
  homepage "https://public.tableau.com/s/"

  livecheck do
    cask "tableau"
  end

  depends_on :macos

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
