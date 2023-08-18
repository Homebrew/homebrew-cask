cask "tableau-reader" do
  version "2023.2.1"
  sha256 "3c6bf3f6a48e68fdb7da9418f633f097b2fa0ac11e0adfb6c6c4288b1e1812cf"

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name "Tableau Reader"
  desc "Open and interact with data visualizations built in Tableau Desktop"
  homepage "https://www.tableau.com/products/reader"

  livecheck do
    url "https://www.tableau.com/downloads/reader/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+(?:-\d+)+)\.dmg/i, 1].tr("-", ".")
    end
  end

  pkg "Tableau Reader.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Reader.app",
  ]

  zap trash: [
    "/Library/Preferences/com.tableau.Tableau-Reader-*.plist",
    "~/Library/Preferences/com.tableau.Tableau-Reader-*.plist",
    "~/Library/Saved Application State/com.tableausoftware.tableaureader.savedState",
  ]
end
