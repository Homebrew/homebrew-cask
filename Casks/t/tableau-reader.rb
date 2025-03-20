cask "tableau-reader" do
  arch arm: "-arm64"

  version "2025.1.0"
  sha256 arm:   "e1bb4d5bd62fe2a6905c37c0baf6eab1e3af31514fb0d2068b8d4e5767c7b488",
         intel: "eec82a4a2e15d0dabe13b5a9d5642088f44df36211c3cadad82761115c10b8cc"

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
