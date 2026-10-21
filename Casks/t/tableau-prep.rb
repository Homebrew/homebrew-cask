cask "tableau-prep" do
  arch arm: "-arm64"

  version "2026.3.0"
  sha256 arm:   "3973df55be692abe0574a7bc219f56b3bf34c543fab808b64ef19e54db586330",
         intel: "ada6796ced8f1f3b9945f2148c57b987a81f3d57bab9b82ecfe01027ba88e1a9"

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}#{arch}.dmg",
      user_agent: :curl
  name "Tableau Prep"
  name "Tableau Prep Builder"
  desc "Combine, shape, and clean your data for analysis"
  homepage "https://www.tableau.com/products/prep"

  livecheck do
    cask "tableau"
  end

  depends_on macos: :ventura

  pkg "Tableau Prep Builder.pkg"

  uninstall pkgutil: [
    "com.amazon.redshiftodbc",
    "com.simba.sparkodbc",
    "com.simba.sqlserverodbc",
    "com.tableausoftware.desktopShortcut",
    "com.tableausoftware.FLEXNet.11.*",
    "com.tableausoftware.Maestro.app",
    "com.tableausoftware.oracle",
    "com.tableausoftware.postgresql",
    "com.tableausoftware.telemetry",
    "simba.sparkodbc",
  ]

  zap delete: [
        "/Library/Application Support/Tableau Prep Builder",
        "/Library/Preferences/FLEXnet Publisher",
      ],
      trash:  [
        "~/Documents/My Tableau Prep Repository",
        "~/Library/Application Support/Tableau Prep Builder #{version}",
        "~/Library/Caches/com.tableau.caching",
        "~/Library/Preferences/com.tableau.Tableau-Prep-tableau-#{version.major}-#{version.minor}.plist",
        "~/Library/Preferences/com.tableausoftware.tableauprep.plist",
        "~/Library/Preferences/com.tableausoftware.tabminerva.plist",
        "~/Library/Saved Application State/com.tableausoftware.tableauprep.savedState",
        "~/Library/Tableau",
      ]
end
