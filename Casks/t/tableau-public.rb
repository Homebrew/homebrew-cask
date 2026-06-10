cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.2.0"
  sha256 arm:   "df6d7e0312c9ee63303f0cc0bee2df61d8909baab6e59e351091ad501db9a29f",
         intel: "eedce54d67f72a76f28fd354855ac472f58deda8e8329bcf7b1ef58c777808b1"

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
