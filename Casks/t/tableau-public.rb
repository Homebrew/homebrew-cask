cask "tableau-public" do
  arch arm: "-arm64"

  version "2024.3.3"
  sha256 arm:   "7dd3c08d0df8b8a519ba933ddd2ad5d1ca9b172db40f7e0f2cfdec0efacc87f2",
         intel: "05f1f2871b7b315b54e89273c2bebff1ab2f95695d3913583d4c8e37922e5b0e"

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
