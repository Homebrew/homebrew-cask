cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.2.1"
  sha256 arm:   "b14dd973e51ebb191d2ab039925a43d7ca85044d14a1af6a267facb202298104",
         intel: "505e22170ec428aee6412f670b91261a8867b06511179c65b31a96ee8389b923"

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
