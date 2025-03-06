cask "tableau-public" do
  arch arm: "-arm64"

  version "2024.3.4"
  sha256 arm:   "cf2d51efdefe6c889672af1059b86dbe998bbabd33099c01687f78b61c404651",
         intel: "2fbabaf8c85a3989b62636bd83bf67b066557781b485d87a90324a51e3a5a32f"

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
