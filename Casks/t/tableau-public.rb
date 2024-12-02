cask "tableau-public" do
  arch arm: "-arm64"

  version "2024.3.1"
  sha256 arm:   "6ba55e6feb2c3a08184b409d17f6647431da9afeafaa1adba712196f2c122ebe",
         intel: "089e9bcad7eb13221ff7bdde0508d95247bb73ac18638e5a1e6ed912179f3580"

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
