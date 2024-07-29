cask "tableau-prep" do
  version "2024.1.4"
  sha256 "3944ded280bbb03f47ed58f0f1726d0436c93f8466705c2ebf2adf5061b633f5"

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg",
      user_agent: "curl/8.7.1"
  name "Tableau Prep"
  name "Tableau Prep Builder"
  desc "Combine, shape, and clean your data for analysis"
  homepage "https://www.tableau.com/support/releases/prep"

  livecheck do
    url "https://downloads.tableau.com/TableauAutoUpdate.xml"
    strategy :xml do |xml|
      xml.get_elements("//version").map { |item| item.attributes["releaseNotesVersion"] }
    end
  end

  depends_on macos: ">= :el_capitan"

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
