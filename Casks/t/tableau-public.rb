cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.3.1"
  sha256 arm:   "fd43d9a1e78c8a8cf0ae1c4ad3653f9efc7abe35b5a1b52de3982bc052d7f324",
         intel: "cf93e75b564f67c2c7d6585ef29cf57f9b71d7fec589d07cc0f88164f56e5a36"

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
