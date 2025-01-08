cask "tableau-public" do
  arch arm: "-arm64"

  version "2024.3.2"
  sha256 arm:   "16f7e58f34a6dea861633cc9b052867911ff70a0861a769cc8b6ad42f0dfb3ea",
         intel: "a19a8efdbdb47ecbbc32ad047f4c2080e4c1db026679b77fd64af1e9e0273bbc"

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
