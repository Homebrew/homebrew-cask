cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.2.1"
  sha256 arm:   "e6031c813fed032dd76ba68726511a1e50973004341cd1be52b179f0fb86c757",
         intel: "04083b256f46a55243df5fc99db145734b3631de1af14c9bed1b217d89102f16"

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
