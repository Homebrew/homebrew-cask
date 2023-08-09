cask "airtable" do
  version "1.6.3"
  sha256 "fbba5a1e4a2290d94c10c7e08376dccd4173c84b6383620a76f30fea4d4f0d2d"

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name "Airtable"
  desc "Spreadsheet-database hybrid cloud collaboration"
  homepage "https://airtable.com/"

  livecheck do
    url "https://airtable.com/desktopAppLatestVersion?version=0.0.0&platform=darwin"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Airtable.app"

  uninstall quit:   "com.FormaGrid.Airtable",
            delete: "/Library/Logs/DiagnosticReports/Airtable*.*_resource.diag"

  zap trash: [
    "~/Library/Application Support/Airtable",
    "~/Library/Caches/com.FormaGrid.Airtable*",
    "~/Library/Cookies/com.FormaGrid.Airtable.binarycookies",
    "~/Library/HTTPStorages/com.FormaGrid.Airtable*",
    "~/Library/Logs/Airtable",
    "~/Library/Preferences/ByHost/com.FormaGrid.Airtable.ShipIt.*.plist",
    "~/Library/Preferences/com.FormaGrid.Airtable*.plist",
    "~/Library/Saved Application State/com.FormaGrid.Airtable.savedState",
  ]
end
