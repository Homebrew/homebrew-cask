cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.1.0"
  sha256 arm:   "c903546f74dc08a79b64e006af08e0fe81e47dff36e769f359a1fcb7012f1c8d",
         intel: "64c98cda7cbe3c87325895fae46855b66450fe5301c26518f7e81fd9d8147fc4"

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
