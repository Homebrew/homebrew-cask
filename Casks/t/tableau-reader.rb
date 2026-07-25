cask "tableau-reader" do
  arch arm: "-arm64"

  version "2026.2.1"
  sha256 arm:   "dc2c3ea8289e3c202116c02d649e1c6d29bff1e071c81a6054b1c7202794902b",
         intel: "60fb23943824f30f9583c9eefe42df22890b0c5e5820d8f89c98f202449e0dfb"

  url "https://downloads.tableau.com/esdalt/#{version}/TableauReader-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: :curl
  name "Tableau Reader"
  desc "Open and interact with data visualisations built in Tableau Desktop"
  homepage "https://www.tableau.com/products/reader"

  livecheck do
    cask "tableau"
  end

  depends_on macos: :ventura

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
