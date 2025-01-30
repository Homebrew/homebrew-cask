cask "tableau-reader" do
  arch arm: "-arm64"

  version "2024.3.3"
  sha256 arm:   "7d2c7789e9cb71169c70ed06508a1e3fdbe7357ad96cef1614b20f1743c8879c",
         intel: "c92274f9ea83d36dac6e0475b636d6eb1ace6b5e1575f47f30ecfc8297aca280"

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
