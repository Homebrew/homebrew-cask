cask "tableau" do
  arch arm: "-arm64"

  version "2026.1.1"
  sha256 arm:   "05eeb4022c389f06f8193f37bb8e8feba0a29e4e3da5609fc6d5c9f438854d10",
         intel: "c0237557ccd3c33a670aa3ac5d077ad01c31e97fe181e4f841eced4a04041d86"

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
