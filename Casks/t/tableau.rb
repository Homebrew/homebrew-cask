cask "tableau" do
  arch arm: "-arm64"

  version "2025.1.2"
  sha256 arm:   "aed2bdb8a1cd396407904a7e032ef48ca50572a05deba50cb4c8652e1272a385",
         intel: "e600e85ce132f1e0037a69ecae03788be95af966a0340cb20dd1f3106dd320c4"

  url "https://downloads.tableau.com/esdalt/#{version}/TableauDesktop-#{version.dots_to_hyphens}#{arch}.dmg",
      user_agent: "curl/8.7.1"
  name "Tableau Desktop"
  desc "Data visualization software"
  homepage "https://www.tableau.com/products/desktop"

  # This checks the upstream Releases page because the XML file we were checking
  # (https://downloads.tableau.com/TableauAutoUpdate.xml) was missing the newest
  # versions. This check works locally but fails in our CI environment, so we
  # should return to checking the XML file if/when it starts being reliably
  # updated to include the newest releases again.
  livecheck do
    url "https://www.tableau.com/support/releases"
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

  depends_on macos: ">= :mojave"

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
