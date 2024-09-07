cask "tableau-public" do
  arch arm: "-arm64"

  version "2024.2.2"
  sha256 arm:   "9cad1cc57f5e07483dee7f1c20d452b4802bb5ca9dae666eec28d385fd06e7ed",
         intel: "0787b816f5ab6fe4c9ecc58cee0d519a6b7daf573ff1bc90ee16c8c6f5335add"

  url "https://downloads.tableau.com/esdalt/#{version}/TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: "curl/8.7.1"
  name "Tableau Public"
  desc "Explore, create and publicly share data visualisations online"
  homepage "https://public.tableau.com/s/"

  livecheck do
    url "https://downloads.tableau.com/TableauAutoUpdate.xml"
    strategy :xml do |xml|
      xml.get_elements("//version").map { |item| item.attributes["releaseNotesVersion"] }
    end
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
