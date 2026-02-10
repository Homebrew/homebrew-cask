cask "tableau" do
  arch arm: "-arm64"

  version "2025.3.2"
  sha256 arm:   "e725b0db1ea01ad2aeede627f078fd0f58a825cf4e87d2d68acb357a25813ee1",
         intel: "fe5be8f5ab6f4f705c1e754fa48f1b08fd33cb255d1565786aba1064751d8a25"

  on_arm do
    depends_on macos: ">= :ventura"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://downloads.tableau.com/esdalt/#{version}/TableauDesktop-#{version.dots_to_hyphens}#{arch}.dmg",
      user_agent: :curl
  name "Tableau Desktop"
  desc "Data visualization software"
  homepage "https://www.tableau.com/products/desktop"

  # This checks the upstream Releases page because the XML file we were checking
  # (https://downloads.tableau.com/TableauAutoUpdate.xml) was missing the newest
  # versions. This check works locally but fails in our CI environment, so we
  # should return to checking the XML file if/when it starts being reliably
  # updated to include the newest releases again.
  livecheck do
    url "https://www.tableau.com/support/releases",
        user_agent: :browser
    regex(%r{href=.*?desktop/v?(\d+(?:\.\d+)+)[^"' >]*["' >]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        if (version = match[0]).count(".") >= 2
          version
        else
          "#{version}.0"
        end
      end
    end
  end

  pkg "Tableau Desktop.pkg"

  uninstall pkgutil: [
    "com.amazon.redshiftodbc",
    "com.simba.sparkodbc",
    "com.simba.sqlserverodbc",
    "com.tableausoftware.Desktop.app",
    "com.tableausoftware.DesktopShortcut",
    "com.tableausoftware.extensions",
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.mysql",
    "com.tableausoftware.networkExtensions",
    "com.tableausoftware.oracle",
    "com.tableausoftware.postgresql",
    "com.tableausoftware.telemetry",
    "simba.sparkodbc",
  ]

  zap delete: "/Library/Preferences/com.tableau.Tableau-#{version.major_minor}.plist",
      trash:  [
        "/Library/Preferences/com.tableau.Tableau-#{version.major_minor}.plist",
        "~/Documents/My Tableau Repository",
        "~/Library/Caches/com.tableau.caching",
        "~/Library/Caches/com.tableausoftware.MapTiles",
        "~/Library/Preferences/com.tableau.Registration.plist",
        "~/Library/Preferences/com.tableau.Tableau-#{version.major_minor}.plist",
        "~/Library/Saved Application State/com.tableausoftware.tableaudesktop.savedState",
        "~/Library/Tableau",
      ]
end
