cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.3.2"
  sha256 arm:   "e1534b9ff5ea69d2d3cd5fc705a58d0a1573addf9dc150862ca8897bc0aa869a",
         intel: "3a46a6efb98875cc7f5fd008224554eb2c15e1b1d3c2d2578170c7d9268bb7e3"

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
