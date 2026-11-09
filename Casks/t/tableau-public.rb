cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.3.0"
  sha256 arm:   "25bb55dda09413e71bce7581a70a2ee98bb8fc8a377eaa573b17ae258d510d43",
         intel: "50b73dbc3114b15ccbfd9c94ef628596d2e6284c00ed9d0d0abf4612534855d4"

  url "https://downloads.tableau.com/esdalt/#{version}/TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: :curl
  name "Tableau Public"
  desc "Explore, create and publicly share data visualisations online"
  homepage "https://public.tableau.com/s/"

  livecheck do
    cask "tableau"
  end

  depends_on macos: :ventura

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
