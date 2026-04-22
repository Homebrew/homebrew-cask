cask "tableau-public" do
  arch arm: "-arm64"

  version "2026.1.1"
  sha256 arm:   "7463aa0a17f3ee1b85def74b526e40bfd3b16de5b56466cbfc893067714568ca",
         intel: "02a21c8d63b7676de6994226e32317f8732a353d414b70ce11b81e7c725dd0cc"

  on_arm do
    depends_on macos: ">= :ventura"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://downloads.tableau.com/esdalt/#{version}/TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: :curl
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
