cask "tableau-prep" do
  arch arm: "-arm64"

  version "2026.2.2"
  sha256 arm:   "daf2965e613d274b55e636c6a439fafca36f56960de9b31949b22d13aa0cfa37",
         intel: "1048547cd29a04301956c05134bf9504cd9feacfc6a341dc68821a92a291a089"

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
