cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.3.2"
  sha256 arm:   "1664b8b5c3d2a859685460127665a421dd6bc34c9d786fee6bc596a612abf210",
         intel: "6a8cbdcf7efdd6869aa6f4f37d7fc675fb4baa3b83a7b9d29d2e79970261efb3"

  on_arm do
    depends_on macos: ">= :ventura"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://downloads.tableau.com/esdalt/#{version}/TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: :curl
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
