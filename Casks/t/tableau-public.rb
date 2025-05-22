cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.1.2"
  sha256 arm:   "736e80eaf3ccc4a5ab151007ebb7bdee7dca5af629a0b2f91c4567fca3e36b0e",
         intel: "2f05cc842329a0bf618c69c79b106ebe4ba39df3e13bf9d5b49557e171bd66a6"

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
