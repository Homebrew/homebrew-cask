cask "tableau-reader" do
  arch arm: "-arm64"

  version "2025.3.2"
  sha256 arm:   "a5ea5e45df04e85f27402d585775dec5ee1d0b34926713b7c806e8adb800400d",
         intel: "1c56f4b9dddc7a92bf0d68f0f5bcd1e527a4b447f48465225adff51e22614836"

  on_arm do
    depends_on macos: ">= :ventura"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://downloads.tableau.com/esdalt/#{version}/TableauReader-#{version.dots_to_hyphens}#{arch}.pkg",
      user_agent: :curl
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
