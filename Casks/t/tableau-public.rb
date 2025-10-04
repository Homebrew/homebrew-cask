cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.2.3"
  sha256 arm:   "b1f486da4ee3a2f05e2f9dab57586eecaf5d3f2fbc7c8fb724cbcbdbc6f70ae0",
         intel: "da7e48fb0f4730797146231526fa7942e2177e4dcfad3d08cf9ab41e26b19afb"

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
