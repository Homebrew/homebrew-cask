cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.2.4"
  sha256 arm:   "2387400960468d87e16f5948bef524a48e8c0fadd24ff265ea7998970c904bf3",
         intel: "b511fe5f0a13ff95f2232169f7893eced06a6ba225b8dff7054492a0b6ed2898"

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
