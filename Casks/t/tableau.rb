cask "tableau" do
  arch arm: "-arm64"

  version "2024.3.3"
  sha256 arm:   "2bb01bb19891c1d98e68a4df3381c4e8e514c18c93aacef3d66a13d992995f8d",
         intel: "23ff456ac0e3ad4698feb81ca80cd964aacf0a63c1455d48701b5cb600cb49f8"

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
