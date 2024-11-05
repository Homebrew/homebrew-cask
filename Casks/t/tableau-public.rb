cask "tableau-public" do
  arch arm: "-arm64"

  version "2024.3.0"
  sha256 arm:   "262409eb605124ac4e841f8069a85a2e31160da81a2164933782f0bf19121387",
         intel: "21451daec76fd22f287132d5228bd2bc51934ffe2315066022ced81de85fbe34"

  url "https://downloads.tableau.com/esdalt/#{version}/TableauPublic-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: "curl/8.11.0"
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
