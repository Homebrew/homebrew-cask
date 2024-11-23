cask "tableau-public" do
  arch arm: "-arm64"

  version "2024.2.3"
  sha256 arm:   "7468fb01ec7431b17187a6dea8b9407c56b00f9b41331ed6bc7d54a1036bd203",
         intel: "007f572248a4c7a169da13a1455338ca32962320d9d143900b51a9fe6c2e6645"

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
