cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.1.1"
  sha256 arm:   "7c68eae24ab7e735dca3a7fcc321fe7658bdd4e051cc5623e2e04cba3f0ddb4a",
         intel: "12fbb9a84e9f4741d5787829abf7f151710114e97a3f505bb7b3dd09d3ab5010"

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
