cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.2.2"
  sha256 arm:   "3107288fb805109dba466f7db89dbf4e57c91f7c8de5e95ec864424eed9130f4",
         intel: "7519d90ffd8685273aff9053f45e3e0643abc0d6d5d6c22c42d1a48422baca3c"

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
