cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.2.3"
  sha256 arm:   "420d8ebffa015e534523ccbbceb49a5055772f6b4bb6d0728abde48ebf30f29d",
         intel: "a47c2011be8cf1225ae6b3a4c61bc8b9df5886ce554fc76c0c2a16c2ee9bc993"

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
