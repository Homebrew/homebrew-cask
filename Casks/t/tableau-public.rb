cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.2.0"
  sha256 arm:   "82f67014252c3114ba794a4b9048d55cc0edcd98a3d6d37748bda06896a553d0",
         intel: "01f1be7da7ac9c28f73ac1099a27a1608c190c3ee30068c0cafce9789a557162"

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
