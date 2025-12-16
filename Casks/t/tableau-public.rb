cask "tableau-public" do
  arch arm: "-arm64"

  version "2025.3.0"
  sha256 arm:   "fed39b78e0c74cf5f3e068f15f9db43042670a62356e6fa73d32f625bbb89021",
         intel: "28d05ddde1d46c70684cecc85dfd7ff3d09bfb63b53b0e4e4b8088d646c716bb"

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
