cask "tableau-reader" do
  arch arm: "-arm64"

  version "2025.2.0"
  sha256 arm:   "5eb73c110a850cb1d9a72ba1c1dcd36e6255d4b118ee55c865fec141e2f14d08",
         intel: "6b7ad38f17501dc0e2c017f834606bc0ebe3d5f522e4fdb097daaccd4b63b50d"

  url "https://downloads.tableau.com/esdalt/#{version}/TableauReader-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: "curl/8.7.1"
  name "Tableau Reader"
  desc "Open and interact with data visualisations built in Tableau Desktop"
  homepage "https://www.tableau.com/products/reader"

  livecheck do
    cask "tableau"
  end

  pkg "TableauReader-#{version.dots_to_hyphens}#{arch}.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Reader.app",
    "com.tableausoftware.ReaderShortcuttab",
  ]

  zap pkgutil: [
        "com.tableausoftware.extensions",
        "com.tableausoftware.networkExtensions",
        "com.tableausoftware.telemetry",
      ],
      delete:  "/Library/Preferences/com.tableau.Tableau-Reader-*.plist",
      trash:   [
        "~/Library/Caches/com.tableau.caching",
        "~/Library/Caches/com.tableausoftware.MapTiles",
        "~/Library/Preferences/com.tableau.Tableau-*.plist",
        "~/Library/Preferences/com.tableau.Tableau-Reader-*.plist",
        "~/Library/Saved Application State/com.tableausoftware.tableaureader.savedState",
        "~/Library/Tableau",
      ]
end
